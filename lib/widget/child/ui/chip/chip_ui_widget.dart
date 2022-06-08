import 'package:flutter/material.dart';

class ChipUiWidget extends StatefulWidget {
  final String title;

  ChipUiWidget({this.title});

  @override
  _ChipUiWidgetState createState() => _ChipUiWidgetState();
}

class _ChipUiWidgetState extends State<ChipUiWidget> {
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
        _chipItem(
            'RowChip',
            RawChip(
              label: Text("xky"),
              isEnabled: false,
            ))
      ],
    );
  }

  Widget _chipItem(String text, Widget child) {
    return Row(
      children: <Widget>[
        Text(text ?? ''),
        SizedBox(
          width: 10,
        ),
        child
      ],
    );
  }
}
