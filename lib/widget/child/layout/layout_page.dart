import 'package:flutter/material.dart';

/// 布局的研究
class LayoutPage extends StatefulWidget {
  @override
  _LayoutPageState createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("布局"),
      ),
      body: _buildRow(),
    );
  }

  _buildOverflowBox() {
    return OverflowBox(
      minWidth: 0,
      minHeight: 0,
      maxWidth: double.infinity,
      maxHeight: double.infinity,
      child: _buildRow(),
    );
  }

  _buildRow() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.pink,
            child: Text(
              "kskdfjlskdfjslkdfjslfjslkdfjsdlkfsdlkfkskdfjlskdfjslkdfjslfjslkdfjsdlkfsdlkf",
              style: TextStyle(fontSize: 19),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.green,
            child: Text(
              "Good",
              style: TextStyle(fontSize: 19),
            ),
          ),
        )
      ],
    );
  }

  _buildErrorRow() {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.pink,
          child: Text(
            "kskdfjlskdfjslkdfjslfjslkdfjsdlkfsdlkfkskdfjlskdfjslkdfjslfjslkdfjsdlkfsdlkf",
            style: TextStyle(fontSize: 19),
          ),
        ),
        Container(
          color: Colors.green,
          child: Text(
            "Good",
            style: TextStyle(fontSize: 19),
          ),
        ),
      ],
    );
  }

  _buildAlign() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.green,
      ),
    );
  }

  _buildCenter() {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.pink,
      ),
    );
  }

  _buildConstrained() {
    return ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: 70, minHeight: 70, maxWidth: 150, maxHeight: 150),
      child: Container(
        color: Colors.red,
        width: 12,
        height: 12,
      ),
    );
  }

  _buildContainer() {
    return Container(
      color: Colors.red,
      width: 10,
      height: 10,
    );
  }
}
