import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// key 的测试
/// https://www.jianshu.com/p/6e704112dc67
/// https://www.yuque.com/laoxie-23n3t/xc4eb1/ugkp71
class WidgetKeyTestPage extends StatefulWidget {
  @override
  _WidgetKeyTestPageState createState() => _WidgetKeyTestPageState();
}

class _WidgetKeyTestPageState extends State<WidgetKeyTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget-key"),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClickBox(Colors.blue,ValueKey(2)),
          ClickBox(Colors.green,ValueKey(1)),

          // ClickBox(Colors.blue,ValueKey(2)),
          // ClickBox(Colors.green,ValueKey(1)),
        ],
      ),
    );
  }
}

class ClickBox extends StatefulWidget {
  final Color color;

  ClickBox(this.color,Key key):super(key:key);

  @override
  _ClickBoxState createState() => _ClickBoxState();
}

class _ClickBoxState extends State<ClickBox> {
  int count = 0;
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
      color: widget.color,
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
