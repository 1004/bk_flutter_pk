import 'package:bk_flutter_pk/state/inherited/share_data_widget.dart';
import 'package:bk_flutter_pk/state/inherited/test_share_data_widget.dart';
import 'package:flutter/material.dart';

class InheritedWidgetTestPage extends StatefulWidget {
  @override
  _InheritedWidgetTestPageState createState() => _InheritedWidgetTestPageState();
}

class _InheritedWidgetTestPageState extends State<InheritedWidgetTestPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("共享数据"),),
      body: _body(),
    );
  }

 Widget _body() {
    return Center(
      child: ShareDataWidget(
        data: count,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: TestShareDataWidget(),
            ),
            RaisedButton(
              onPressed: (){
                setState(() {
                  count++;
                });
              },
              child: Text("自增"),
            )
          ],
        ),
      ),
    );
  }
}
