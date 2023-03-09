import 'package:flutter/material.dart';
import 'package:flutter_todo_list/common/Global.dart';

void main() => Global.init().then((value) => runApp(const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '资产工具',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyAssetsPage(title: '我的资产'),
    );
  }
}

class MyAssetsPage extends StatefulWidget {
  const MyAssetsPage({super.key, required this.title});

  final String title;

  @override
  State<MyAssetsPage> createState() => _MyAssetsPageState();
}

class _MyAssetsPageState extends State<MyAssetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints(
            minHeight: 100,
            minWidth: 100,
            maxHeight: double.infinity,
            maxWidth: double.infinity),
        child: const Center(child: Text('11111')),
      ),
    );
  }
}
