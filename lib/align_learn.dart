import 'package:flutter/material.dart';

class AlignPage extends StatelessWidget {
  const AlignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      color: Colors.blue[50],
      child: Align(
        alignment: Alignment(1, 0),
        child: FlutterLogo(
          size: 60,
        ),
      ),
    );
  }
}
