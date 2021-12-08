import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// key 的测试
/// https://www.jianshu.com/p/6e704112dc67
/// https://www.yuque.com/laoxie-23n3t/xc4eb1/ugkp71
/// 如果要修改集合中的控件的顺序或数量，Key 会很有用。
/// 如何合理适当的使用 Key:
// When: 当您想要保留 Widget 树的状态时，请使用 Key。例如: 当修改相同类型的 Widget 集合（如列表中）时
// Where: 将 Key 设置在要指明唯一身份的 Widget 树的顶部
// Which: 根据在该 Widget 中存储的数据类型选择使用的不同类型的Key
class WidgetKeyTestPage extends StatefulWidget {
  @override
  _WidgetKeyTestPageState createState() => _WidgetKeyTestPageState();
}

class _WidgetKeyTestPageState extends State<WidgetKeyTestPage> {
  List<Widget>  colorsWidget;
  @override
  void initState() {
    colorsWidget = [
      // ClickBox(key: ValueKey(2),),
      // ClickBox(key: ValueKey(1),),

      // ClickBox(),
      // ClickBox(),

      // ClickBoxLess(),
      // ClickBoxLess(),
      ClickBoxLess(key: ValueKey(1)),//less widget 只比较key  和配置
      ClickBoxLess(key: ValueKey(2))
    ];

    // colorsWidget = [
    //   Padding(
    //     padding: EdgeInsets.all(8),
    //     child:ClickBox(key: ValueKey(2),),//重新创建：变换后，同级找不到一样的，Widget就会和Element 解除绑定，创建新的，
    //     //localKey: 重点是同级别找, 一样的话，在找子widget ，找不到就就创建，找到就复用重新绑定
    //   ),
    //   Padding(
    //     padding: EdgeInsets.all(8),
    //     child:ClickBox(key: ValueKey(1),),//重新创建
    //   ),
    //   // ClickBox(key: ValueKey(2),),
    //   // ClickBox(key: ValueKey(1),),
    //
    //   // ClickBox(),
    //   // ClickBox(),
    //
    //   // ClickBoxLess(),
    //   // ClickBoxLess(),
    // ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget-key"),
      ),
      body: _body(context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.sentiment_satisfied),
        onPressed: (){
          changeWidget();
        },
      ),
    );
  }


  _body(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: colorsWidget,
      ),
    );
  }

  void changeWidget() {
    setState(() {
      colorsWidget.insert(1, colorsWidget.removeAt(0));
    });
  }
}

class ClickBoxLess extends StatelessWidget {
  final Color color = UniqueColorGenaretor.getColor();


  ClickBoxLess({Key key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
      alignment: Alignment.center,
    );
  }
}


class ClickBox extends StatefulWidget {
  ClickBox({Key key}):super(key:key);

  @override
  _ClickBoxState createState() => _ClickBoxState();
}

class UniqueColorGenaretor {
  static Color getColor() {
    return Color.fromRGBO(Random().nextInt(256), Random().nextInt(256),
        Random().nextInt(256), 1);
  }
}

class _ClickBoxState extends State<ClickBox> {
  int count = 0;
  Color color = UniqueColorGenaretor.getColor();

  @override
  void initState() {
    super.initState();
    print("initState");
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
      alignment: Alignment.center,
      child: RaisedButton(
        onPressed: (){
          setState(() {
            count++;
          });
        },
        child: Text('$count'),
      ),
    );
  }
}
