import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './messages_all.dart';

class GmLocalizations {
  static Future<GmLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode!.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    //2
    return initializeMessages(localeName).then((b) {
      Intl.defaultLocale = localeName;
      return GmLocalizations();
    });
  }

  static GmLocalizations? of(BuildContext context) {
    return Localizations.of<GmLocalizations>(context, GmLocalizations);
  }

  String get title {
    return Intl.message(
      'Flutter APP',
      name: 'title',
      desc: 'Title for the Demo application',
    );
  }

  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: 'home',
    );
  }

  String get login {
    return Intl.message(
      'login',
      name: 'login',
      desc: 'login',
    );
  }

  String get logout {
    return Intl.message(
      'logout',
      name: 'logout',
      desc: 'logout',
    );
  }

  String get logoutTip {
    return Intl.message(
      'Logged out',
      name: 'logoutTip',
      desc: 'Logged out',
    );
  }

  String get cancel {
    return Intl.message(
      'cancel',
      name: 'cancel',
      desc: 'cancel',
    );
  }

  String get yes {
    return Intl.message(
      'Ok',
      name: 'yes',
      desc: 'yes',
    );
  }

  String get language {
    return Intl.message(
      'language',
      name: 'language',
      desc: 'language',
    );
  }

  String get auto {
    return Intl.message(
      'auto',
      name: 'auto',
      desc: 'auto',
    );
  }

  String get userName {
    return Intl.message(
      'userName',
      name: 'userName',
      desc: 'userName',
    );
  }

  String get userNameRequired {
    return Intl.message(
      'userNameRequired',
      name: 'userNameRequired',
      desc: 'userNameRequired',
    );
  }

  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: 'password',
    );
  }

  String get passwordRequired {
    return Intl.message(
      'passwordRequired',
      name: 'passwordRequired',
      desc: 'passwordRequired',
    );
  }

  String get userNameOrPasswordWrong {
    return Intl.message(
      'userNameOrPasswordWrong',
      name: 'userNameOrPasswordWrong',
      desc: 'userNameOrPasswordWrong',
    );
  }

  String get theme {
    return Intl.message(
      'theme',
      name: 'theme',
      desc: 'theme',
    );
  }
}

//Locale代理类
class GmLocalizationsDelegate extends LocalizationsDelegate<GmLocalizations> {
  const GmLocalizationsDelegate();

  //是否支持某个Local
  @override
  bool isSupported(Locale locale) => ['en', 'zh'].contains(locale.languageCode);

  // Flutter会调用此类加载相应的Locale资源类
  @override
  Future<GmLocalizations> load(Locale locale) {
    //3
    return GmLocalizations.load(locale);
  }

  // 当Localizations Widget重新build时，是否调用load重新加载Locale资源.
  @override
  bool shouldReload(GmLocalizationsDelegate old) => false;
}
