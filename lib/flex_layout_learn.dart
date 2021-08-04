import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlexLayoutPage extends StatelessWidget {
  const FlexLayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(flex: 3, child: Container(height: 30, color: Colors.red)),
          Expanded(flex: 1, child: Container(height: 30, color: Colors.blue)),
        ],
      ),
    );
  }
}
