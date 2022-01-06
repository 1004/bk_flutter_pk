import 'package:bk_flutter_pk/main.dart';
import 'package:bk_flutter_pk/state/inherited/inherited_widget_test_page.dart';
import 'package:flutter/material.dart';

class StateManagerPage extends StatefulWidget {
  @override
  _StateManagerPageState createState() => _StateManagerPageState();
}

class _StateManagerPageState extends State<StateManagerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("状态管理"),),
      body: _body(),
    );
  }

  _body() {
    return Column(
      children: <Widget>[
        ItemWidget("状态-- 共享数据", () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return InheritedWidgetTestPage();
          }));
        }),
        ItemWidget("状态-- 简易Provider", () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return InheritedWidgetTestPage();
          }));
        }),
      ],
    );
  }
}

