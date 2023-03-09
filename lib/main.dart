import 'package:flutter/material.dart';
import 'package:flutter_todo_list/common/Global.dart';

void main() => Global.init().then((value) => runApp(const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '资产工具',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyAssetsPage(title: '我的资产'),
    );
  }
}

class MyAssetsPage extends StatefulWidget {
  const MyAssetsPage({super.key, required this.title});

  final String title;

  @override
  State<MyAssetsPage> createState() => _MyAssetsPageState();
}

class _MyAssetsPageState extends State<MyAssetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: const [
            TotalAssets(assetTotalNum: 6402389),
            AssetsList()
          ],
        ));
  }
}

class TotalAssets extends StatelessWidget {
  const TotalAssets({Key? key, required this.assetTotalNum}) : super(key: key);

  final int assetTotalNum;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
        width: screenWidth,
        height: 60,
        color: Colors.blue,
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(assetTotalNum.toString(),
              style:
                  const TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
        ));
  }
}

class AssetsList extends StatefulWidget {
  const AssetsList({Key? key}) : super(key: key);

  @override
  State<AssetsList> createState() => _AssetsListState();
}

class _AssetsListState extends State<AssetsList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: const [AssetsListItem(), AssetsListItem(), AssetsListItem()],
      ),
    );
  }
}

class AssetsListItem extends StatefulWidget {
  const AssetsListItem({Key? key}) : super(key: key);

  @override
  State<AssetsListItem> createState() => _AssetsListItemState();
}

class _AssetsListItemState extends State<AssetsListItem> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return DecoratedBox(
      decoration: const BoxDecoration(color: Colors.white),
      child: SizedBox(
        height: 50,
        width: screenWidth - 20,
        child: const Text('data'),
      ),
    );
  }
}
