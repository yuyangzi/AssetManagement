import 'package:flutter/material.dart';

class AssetsDetailPage extends StatefulWidget {
  const AssetsDetailPage({Key? key}) : super(key: key);

  @override
  State<AssetsDetailPage> createState() => _AssetsDetailPageState();
}

class _AssetsDetailPageState extends State<AssetsDetailPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('资产详情'));
  }
}
