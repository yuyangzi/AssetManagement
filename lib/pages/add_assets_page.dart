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
              decoration: const BoxDecoration(
              ),
              child: SizedBox(
                width: screenWidth - 20,
                child: Column(
                  children: const [
                    Text('data'),
                    Text('data'),
                    Text('data'),
                  ],
                ),
              )),
        ));
  }
}
