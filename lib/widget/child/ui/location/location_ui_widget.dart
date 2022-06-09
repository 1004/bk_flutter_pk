import 'package:flutter/material.dart';

class LocationUiWidget extends StatefulWidget {
  final String title;

  LocationUiWidget({this.title});

  @override
  _LocationUiWidgetState createState() => _LocationUiWidgetState();
}

class _LocationUiWidgetState extends State<LocationUiWidget> {
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
        _locationTip('Align', _alignWidget()),
        _locationTip('Center', _centerWidget())
      ],
    );
  }

  Widget _locationTip(String text, Widget child) {
    return Column(
      children: <Widget>[
        Text(text ?? ''),
        Divider(height: 1,),
        child,
        Divider(height: 1,),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }

  Widget _alignWidget() {
    return Container(
      color: Colors.lightBlue,
      width: 200,
      height: 200,
      child: Align( // 默认居中
        alignment: Alignment(0, 0),
        child: Text('孙悟空',style: TextStyle(color: Colors.white,fontSize: 20),),
      ),
    );
  }

  Widget _centerWidget() {
    return Container(
      color: Colors.lightBlue,
      width: 200,
      height: 200,
      child: Center( // 默认居中
        child: Text('八戒',style: TextStyle(color: Colors.white,fontSize: 20),),
      ),
    );
  }
}
