import 'package:flutter/material.dart';

class LessGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    TextStyle textStyle = TextStyle(fontSize: 20);
    return MaterialApp(
      title: 'StatelessWidget组件学',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Container(
              alignment: Alignment.center,
              child: Text('StatelessWidget组件学'),
            ),
          ),
          body: Container(
            decoration: BoxDecoration(color: Colors.white),
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  'I am Text',
                  style: textStyle,
                ),
                Icon(
                  Icons.ios_share,
                  size: 50,
                  color: Colors.amberAccent,
                ),
                CloseButton(
                  color: Colors.blueAccent,
                ),
                BackButton(),
                Chip(avatar: Icon(Icons.android), label: Text('安卓系统')),
                Divider(
                  height: 100,
                  color: Colors.black,
                ),
                Card(
                  color: Colors.yellow,
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.access_alarm),
                  ),
                ),
                Card(
                  color: Colors.greenAccent,
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text('I am Card', style: textStyle),
                  ),
                ),
                AlertDialog(
                  title: Text('alert'),
                  content: Text('alert content', style: textStyle),
                )
              ],
            ),
          )),
    );
  }
}
