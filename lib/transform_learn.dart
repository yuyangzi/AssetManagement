import 'package:flutter/material.dart';

class TransformPage extends StatelessWidget {
  const TransformPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Transform(
        transform: Matrix4.skewY(0.3),
        alignment: Alignment.topRight,
        child: Container(
          padding: EdgeInsets.all(8),
          color: Colors.deepOrange,
          child: Text('Apartment for rent!'),
        ),
      ),
    );
  }
}
