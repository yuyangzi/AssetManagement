import 'package:flutter/material.dart';

class SingleChildScrollViewPage extends StatelessWidget {
  const SingleChildScrollViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    return Scrollbar(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Center(
        child: Column(
          children: str.split('').map((e) => Text(e, textScaleFactor: 2,)).toList(),
        ),
      ),
    ));
  }
}
