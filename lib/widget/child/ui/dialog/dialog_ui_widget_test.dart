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
        _showAlertDialog(),
        _showSimpleDialog(),
        _showCustomDialog(),
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
          Container(
            height: 20,
            color: Colors.red,
          ),
          Container(
            height: 20,
            color: Colors.blueGrey,
          ),
          Container(
            height: 20,
            color: Colors.grey,
          )
        ]);
  }

  Widget _showAlertDialog() {
    return ItemWidget("提示弹窗(AlertDialog)", () {
      _showAlertDialogText();
    });
  }

  void _showAlertDialogText() {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text('提示'),
            content: Text('确认提交吗'),
            backgroundColor: Colors.grey.shade200,
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            actions: <Widget>[
              FlatButton(
                child: Text('取消'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text('确定'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  _showSimpleDialog() {
    return ItemWidget("提示弹窗(SimpleDialog)", () {
      _showSimpleDialogTest();
    });
  }

  void _showSimpleDialogTest() {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('提示'),
            children: <Widget>[
              Container(
                height: 100,
                alignment: Alignment.center,
                child: Text('中国是个好地方'),
              ),
              Divider(
                height: 1,
              ),
              FlatButton(
                child: Text('取消'),
                onPressed: () {
                  Navigator.of(context).pop('cancel');
                },
              ),
              Divider(
                height: 1,
              ),
              FlatButton(
                child: Text('确定'),
                onPressed: () {
                  Navigator.of(context).pop('ok');
                },
              )
            ],
          );
        });
  }

  Widget _showCustomDialog() {
    return ItemWidget("自定义弹窗(Dialog)", () {
      _showCustomDialogTest();
    });
  }

  void _showCustomDialogTest() {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            backgroundColor: Colors.green.shade200,
            elevation: 10,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Container(
              height: 150,
              child: Center(
                child: Text('欢迎光临'),
              ),
            ),
          );
        });
  }
}
