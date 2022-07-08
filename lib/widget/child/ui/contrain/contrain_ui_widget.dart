import 'package:flutter/material.dart';

class ConstrainUiWidget extends StatefulWidget {
  final String title;

  ConstrainUiWidget({this.title});

  @override
  _ConstrainUiWidgetState createState() => _ConstrainUiWidgetState();
}

class _ConstrainUiWidgetState extends State<ConstrainUiWidget> {
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

      ],
    );
  }
}
