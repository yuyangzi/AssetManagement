import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StackAndPositionedPage extends StatelessWidget {
  const StackAndPositionedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text('data',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            color: Colors.red,
          ),
          Positioned(
            left: 18,
            child: Text('I am Jack'),
          ),
          Positioned(
            top: 18,
            child: Text('Your friend'),
          ),
        ],
      ),
    );
  }
}
