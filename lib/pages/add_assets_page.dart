import 'package:flutter/material.dart';

class AddAssetsPage extends StatefulWidget {
  const AddAssetsPage({Key? key}) : super(key: key);

  @override
  State<AddAssetsPage> createState() => _AddAssetsPageState();
}

class _AddAssetsPageState extends State<AddAssetsPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('添加资产'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: DecoratedBox(
              decoration: const BoxDecoration(),
              child: SizedBox(
                width: screenWidth - 20,
                child: Column(
                  children: const [
                    AssetsTypeItem(text: '流动资金', bgColor: Colors.deepOrange),
                    AssetsTypeItem(text: '投资', bgColor: Colors.greenAccent),
                    AssetsTypeItem(text: '固定资产', bgColor: Colors.lightGreen),
                    AssetsTypeItem(text: '应收款', bgColor: Colors.lime),
                    AssetsTypeItem(text: '负责', bgColor: Colors.cyan),
                  ],
                ),
              )),
        ));
  }
}

class AssetsTypeItem extends StatefulWidget {
  const AssetsTypeItem({Key? key, required this.text, required this.bgColor})
      : super(key: key);

  final String text;

  final Color bgColor;

  @override
  State<AssetsTypeItem> createState() => _AssetsTypeItemState();
}

class _AssetsTypeItemState extends State<AssetsTypeItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: widget.bgColor,
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: SizedBox(
          height: 50,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(widget.text),
            ),
          ),
        ),
      ),
    );
  }
}
