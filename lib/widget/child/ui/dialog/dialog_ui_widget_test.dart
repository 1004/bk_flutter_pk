import 'package:bk_flutter_pk/main.dart';
import 'package:flutter/material.dart';

class DialogUIWidgetTest extends StatefulWidget {
  @override
  _DialogUIWidgetTestState createState() => _DialogUIWidgetTestState();
}

class _DialogUIWidgetTestState extends State<DialogUIWidgetTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("弹窗(dialog)"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _aboutDialog(),
      ],
    );
  }

  Widget _aboutDialog() {
    return ItemWidget("关于弹窗", () {
      _showAboutDialogTest();
    });
  }

  void _showAboutDialogTest() {
    showAboutDialog(
        context: context,
        applicationName: "应用程序",
        applicationVersion: "1.0",
        applicationLegalese: '好好学习',
        children: <Widget>[
          Container(height: 20,color: Colors.red,),
          Container(height: 20,color: Colors.blueGrey,),
          Container(height: 20,color: Colors.grey,)
        ]);
  }
}
