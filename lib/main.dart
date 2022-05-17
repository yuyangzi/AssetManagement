import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'common/Global.dart';
import 'common/locale_model.dart';
import 'common/theme_model.dart';
import 'common/user_model.dart';

import './routes/home_page.dart';
import './routes/login_page.dart';
import './routes/language_route.dart';
import './routes/theme_change.dart';
import 'l10n/localization_intl.dart';

void main() => Global.init().then((e) => runApp(const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeModel()),
        ChangeNotifierProvider(create: (_) => UserModel()),
        ChangeNotifierProvider(create: (_) => LocaleModel()),
      ],
      child: Consumer2<ThemeModel, LocaleModel>(
        builder: (BuildContext context, themeModel, localeModel, child) {
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: themeModel.theme,
            ),
            onGenerateTitle: (context) {
              return GmLocalizations.of(context)!.title;
            },
            home: const HomeRoute(),
            locale: localeModel.getLocale(),
            //我们只支持美国英语和中文简体
            supportedLocales: const [
              Locale('en', 'US'), // 美国英语
              Locale('zh', 'CN'), // 中文简体
              //其它Locales
            ],
            localizationsDelegates: const [
              // 本地化的代理类
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GmLocalizationsDelegate()
            ],
            localeResolutionCallback: (localeTemp, supportedLocales) {
              if (localeModel.getLocale() != null) {
                //如果已经选定语言，则不跟随系统
                return localeModel.getLocale();
              } else {
                //跟随系统
                Locale locale;
                if (supportedLocales.contains(localeTemp)) {
                  locale = localeTemp!;
                } else {
                  //如果系统语言不是中文简体或美国英语，则默认使用美国英语
                  locale = const Locale('en', 'US');
                }
                return locale;
              }
            },
            // 注册路由表
            routes: <String, WidgetBuilder>{
              "login": (context) => const LoginRoute(),
              "themes": (context) => const ThemeChangeRoute(),
              "language": (context) => const LanguageRoute(),
            },
          );
        },
      ),
    );
  }
}
