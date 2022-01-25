import 'package:bk_flutter_pk/main.dart';
import 'package:bk_flutter_pk/widget/child/key/widget_key_test_page.dart';
import 'package:bk_flutter_pk/widget/child/layout/layout_page.dart';
import 'package:flutter/material.dart';

import 'child/life/widget_life_test_page.dart';

class WidgetHomePage extends StatefulWidget {
  @override
  _WidgetHomePageState createState() => _WidgetHomePageState();
}

class _WidgetHomePageState extends State<WidgetHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ItemWidget("Widget Key", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return WidgetKeyTestPage();
              }));
            }),
            ItemWidget("Widget 生命周期", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return WidgetLifePage();
              }));
            }),
            ItemWidget("常用Widget", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return WidgetKeyTestPage();
              }));
            }),
            ItemWidget("布局原理", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return LayoutPage();
              }));
            }),
          ],
        ),
      ),
    );
  }
}
