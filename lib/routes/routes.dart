import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_todo_list/pages/add_assets_page.dart';

import '../pages/assets_detail_page.dart';
import '../pages/my_assets_page.dart';

var _myAssetsPageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const MyAssetsPage(
    title: '我的资产',
  );
});

var _assetsDetailPageHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const AssetsDetailPage();
  },
);

var _addAssetsPageHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const AddAssetsPage();
  },
);

// 路由配置
class Routes {
  static String home = "/";
  static String assetsDetail = "/assetsDetail";
  static String addAssets = "/addAssets";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return;
    });
    router.define(home, handler: _myAssetsPageHandler);
    router.define(assetsDetail, handler: _assetsDetailPageHandler);
    router.define(addAssets, handler: _addAssetsPageHandler);
  }
}
