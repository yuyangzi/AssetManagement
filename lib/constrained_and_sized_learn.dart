import 'package:flutter/material.dart';

class ConstrainedAndSizedPage extends StatelessWidget {
  const ConstrainedAndSizedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(minWidth: 100, minHeight: 100),
        child: DecoratedBox(
          decoration: BoxDecoration(color: Colors.red),
          child: Container(
            height: 5,
            width: 5,
            alignment: Alignment.center,
            // child: Text('ConstrainedAndSizedPage'),
          ),
        ));
  }
}
