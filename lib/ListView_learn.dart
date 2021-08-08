import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 100,
        itemExtent: 50,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text('$index'));
        });
  }
}

class ListViewPage2 extends StatelessWidget {
  const ListViewPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget divider1 = Divider(color: Colors.blue);
    Widget divider2 = Divider(color: Colors.green);
    return ListView.separated(
      itemCount: 100,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(title: Text("$index"));
      },
      separatorBuilder: (BuildContext context, int index) {
        return index % 2 == 0 ? divider1 : divider2;
      },
    );
  }
}

class ListViewPage3 extends StatefulWidget {
  const ListViewPage3({Key? key}) : super(key: key);

  @override
  _ListViewPage3State createState() => _ListViewPage3State();
}

class _ListViewPage3State extends State<ListViewPage3> {
  static const loadingTag = '##loading##';
  var _words = [loadingTag];

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(title: Text('单词列表')),
        Expanded(child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              if (_words[index] == loadingTag) {
                //不足100条，继续获取数据
                if (_words.length - 1 < 100) {
                  //获取数据
                  _retrieveData();
                  //加载时显示loading
                  return Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    child: SizedBox(
                        width: 24.0,
                        height: 24.0,
                        child: CircularProgressIndicator(strokeWidth: 2.0)),
                  );
                } else {
                  //已经加载了100条数据，不再获取数据。
                  return Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "没有更多了",
                        style: TextStyle(color: Colors.grey),
                      ));
                }
              }
              //显示单词列表项
              return ListTile(title: Text(_words[index]));
            },
            separatorBuilder: (BuildContext context, int index) =>
                Divider(height: .0),
            itemCount: _words.length))
      ],
    );
  }

  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      setState(() {
        //重新构建列表
        _words.insertAll(
            _words.length - 1,
            //每次生成20个单词
            generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
        print(_words);
      });
    });
  }
}
