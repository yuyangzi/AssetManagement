import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StateFullGroup extends StatefulWidget {
  _StateFullGroupState createState() => _StateFullGroupState();
}

class _StateFullGroupState extends State<StateFullGroup> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 20);
    return MaterialApp(
      title: 'StatefullWidget组件学',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Container(
              alignment: Alignment.center,
              child: Text('StatefullWidget组件学'),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.grey),
                  activeIcon: Icon(Icons.home, color: Colors.blue),
                  label: '首页'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list, color: Colors.grey),
                  activeIcon: Icon(Icons.list, color: Colors.blue),
                  label: '列表'),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.add),
          ),
          body: _currentIndex == 0
              ? RefreshIndicator(
                  child: ListView(
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.white),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Image.network(
                                'https://img2.sycdn.imooc.com/58b4e2410001b19306400854-140-140.jpg',
                                width: 100,
                                height: 100),
                            TextField(
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.fromLTRB(5, 5, 5, 0),
                                  hintText: '请输入文本',
                                  hintStyle: TextStyle(fontSize: 15)),
                            ),
                            Container(
                              height: 100,
                              margin: EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(color: Colors.lightBlue),
                              child: PageView(
                                children: [
                                  Text('1111', style: TextStyle(color: Colors.red),),
                                  Text('2222', style: TextStyle(color: Colors.deepOrangeAccent),),
                                  Text('3333', style: TextStyle(color: Colors.cyanAccent),),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  onRefresh: _onRefresh)
              : Container(
                  alignment: Alignment.center,
                  child: Icon(Icons.ac_unit),
                )),
    );
  }

  Future<Null> _onRefresh() async {
    await Future.delayed(Duration(milliseconds: 1000));
    return null;
  }
}
