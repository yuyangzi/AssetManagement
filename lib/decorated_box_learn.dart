import 'package:flutter/material.dart';

class DecoratedBoxPage extends StatelessWidget {
  const DecoratedBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red, Colors.yellow]),
          borderRadius: BorderRadius.circular(3),
          boxShadow: [
            BoxShadow(
                color: Colors.black54, offset: Offset(3, 3), blurRadius: 4)
          ]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 80, vertical: 18),
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
