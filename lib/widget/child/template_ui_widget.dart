import 'package:flutter/material.dart';

class TemplateWidget extends StatefulWidget {
  final String title;

  TemplateWidget({this.title});

  @override
  _TemplateWidgettState createState() => _TemplateWidgettState();
}

class _TemplateWidgettState extends State<TemplateWidget> {
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
