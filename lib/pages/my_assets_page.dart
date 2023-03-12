import 'package:flutter/material.dart';

import '../routes/routes.dart';

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
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Column(
        children: const [TotalAssets(assetTotalNum: 6402389), AssetsList()],
      ),
      floatingActionButton: IconButton(
        icon: const Icon(Icons.add_circle),
        iconSize: 60,
        onPressed: () => Navigator.pushNamed(context, Routes.addAssets),
      ),
    );
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
  bool isOpen = false;

  late void Function(PointerDownEvent event) _handleDownEvent;

  @override
  void initState() {
    super.initState();
    _handleDownEvent =
        (PointerDownEvent event) => setState(() => isOpen = !isOpen);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: isOpen
            ? AssetsItemDetailsList(closeOpenEvent: _handleDownEvent)
            : AssetsItemOverview(
                handleDownEvent: _handleDownEvent,
              ));
  }
}

class AssetsItemOverview extends StatelessWidget {
  const AssetsItemOverview({Key? key, required this.handleDownEvent})
      : super(key: key);

  final void Function(PointerDownEvent event) handleDownEvent;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Listener(
      onPointerDown: handleDownEvent,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        child: SizedBox(
          height: 80,
          width: screenWidth - 40,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '流动资金',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text('公积金、招商银行'),
                      Icon(Icons.more_horiz)
                    ]),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text('113'),
                    SizedBox(height: 10),
                    Text('2月28日 更新'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AssetsItemDetailsList extends StatelessWidget {
  const AssetsItemDetailsList({Key? key, required this.closeOpenEvent})
      : super(key: key);

  final void Function(PointerDownEvent event) closeOpenEvent;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth - 40,
      child: Column(
        children: [
          Listener(
            onPointerDown: closeOpenEvent,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                ),
                child: SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [Text('公积金'), Text('11111111')],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Listener(
            onPointerDown: (event) =>
                Navigator.pushNamed(context, Routes.assetsDetail),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                ),
                child: SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [Text('公积金'), Text('11111111')],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: DecoratedBox(
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              ),
              child: SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [Text('公积金'), Text('11111111')],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
