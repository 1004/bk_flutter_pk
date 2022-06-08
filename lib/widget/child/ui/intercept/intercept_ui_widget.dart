import 'package:flutter/material.dart';

class InterceptUiWidget extends StatefulWidget {
  final String title;

  InterceptUiWidget({this.title});

  @override
  _InterceptUiWidgetState createState() => _InterceptUiWidgetState();
}

class _InterceptUiWidgetState extends State<InterceptUiWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? ''),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('RaisedButton开始一组的事件拦截'),
        _interceptWidget(),
        Text('RaisedButton停止一组的事件拦截'),
        Text('IgnorePointer开始一组的事件拦截'),
        _ignorePointer(),
        Text('IgnorePointer停止一组的事件拦截'),
      ],
    );
  }

  Widget _interceptWidget() {
    //本身可以接受事件
    return AbsorbPointer(
        absorbing: true, // true 代表拦截， false代表 不用拦截
        child: Row(
          children: <Widget>[
            RaisedButton(onPressed: (){
              print('RaisedButtonRaisedButton');
            },child: Text('AbsorbPointer 点吧1'),),
            RaisedButton(onPressed: (){
              print('RaisedButtonRaisedButton');
            },child: Text('AbsorbPointer 点吧2'),)
          ],
        ),
    );
  }

  Widget _ignorePointer() {
    //本身是无法接收到事件的
    return IgnorePointer(
      ignoring: true,
      child: Row(
        children: <Widget>[
          RaisedButton(onPressed: (){
            print('IgnorePointer');
          },child: Text('IgnorePointer 点吧1'),),
          RaisedButton(onPressed: (){
            print('IgnorePointer');
          },child: Text('IgnorePointer 点吧2'),)
        ],
      ),
    );
  }
}
