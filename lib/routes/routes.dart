import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_todo_list/Pages/assets_detail_page.dart';

import '../Pages/my_assets_page.dart';

// 对应处理函数(一般处理函数单独放一个文件)
var _myAssetsPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const MyAssetsPage(
    title: '我的资产',
  );
});

var _assetsDetailPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const AssetsDetailPage();
});

// 路由配置
class Routes {
  static String home = "/";
  static String assetsDetail = "/assetsDetail";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return;
    });
    router.define(home, handler: _myAssetsPageHandler);
    router.define(assetsDetail, handler: _assetsDetailPageHandler);
  }
}
