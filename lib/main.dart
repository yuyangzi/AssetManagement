import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo_list/common/Global.dart';
import 'package:flutter_todo_list/routes/routes.dart';

void main() => Global.init().then((value) => runApp(const MyApp()));

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: '资产工具',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: const MyAssetsPage(title: '我的资产'),
//     );
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    final router = FluroRouter();
    Application.router = router; // 先写
    Routes.configureRoutes(router); // 后写
  }

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: '资产管理',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      onGenerateRoute: Application.router.generator, //全局注册
    );
    return app;
  }
}
