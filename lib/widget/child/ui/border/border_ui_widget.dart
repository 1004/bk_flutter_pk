import 'package:flutter/material.dart';

class BorderUiWidget extends StatefulWidget {
  final String title;

  BorderUiWidget({this.title});

  @override
  _BorderUiWidgetState createState() => _BorderUiWidgetState();
}

class _BorderUiWidgetState extends State<BorderUiWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? ''),
      ),
      body: SingleChildScrollView(
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _item(
            RaisedButton(
              shape: BeveledRectangleBorder(
                  side: BorderSide(width: 1, color: Colors.green),
                  borderRadius: BorderRadius.circular(10)),
              child: Text('孙悟空'),
            ),
            'BeveledRectangleBorder'),
        _item(
            RaisedButton(
              shape: BeveledRectangleBorder(
                  side: BorderSide(width: 1, color: Colors.green),
                  borderRadius: BorderRadius.circular(100)),
              child: Text('孙悟空'),
            ),
            'BeveledRectangleBorder'),
        _item(
            RaisedButton(
              shape: Border(top: BorderSide(color: Colors.yellow, width: 2)),
              child: Text('孙悟空'),
            ),
            'Border'),
        _item(
            RaisedButton(
              shape: Border(
                top: BorderSide(color: Colors.red, width: 10),
                right: BorderSide(color: Colors.blue, width: 10),
                bottom: BorderSide(color: Colors.yellow, width: 10),
                left: BorderSide(color: Colors.green, width: 10),
              ),
              child: Text('孙悟空'),
            ),
            'Border'),
        _item(
            RaisedButton(
              shape: BorderDirectional(
                start: BorderSide(color: Colors.red, width: 2),
                end: BorderSide(color: Colors.blue, width: 2),
              ),
              child: Text('孙悟空'),
              onPressed: () {},
            ),
            'BorderDirectional'),
        _item(RaisedButton(
          shape: CircleBorder(side: BorderSide(color: Colors.orange)),
          child: Text('唐僧'),
        ), 'CircleBorder'),
        _item(RaisedButton(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text('猪八戒'),
        ), 'RoundedRectangleBorder'),
        _item(RaisedButton(
          shape: StadiumBorder(
            side: BorderSide(color: Colors.red),
          ),
          child: Text('沙僧'),
        ), 'StadiumBorder'),
        _item(RaisedButton(
          shape: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Text('沙僧'),
        ), 'OutlineInputBorder'),
      ],
    );
  }

  Widget _item(Widget child, String title) {
    return Column(
      children: <Widget>[
        Text(
          title ?? '',
          style: TextStyle(color: Colors.orange),
        ),
        child,
        Divider(
          height: 1,
          color: Colors.grey,
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
