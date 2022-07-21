import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonUiWidget extends StatefulWidget {
  final String title;

  ButtonUiWidget({this.title});

  @override
  _ButtonUiWidgetState createState() => _ButtonUiWidgetState();
}

class _ButtonUiWidgetState extends State<ButtonUiWidget> {
  var _dropValue = '语文';

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
              child: Text('Button'),
              textColor: Colors.indigo,
              onPressed: () {},
            ),
            '普通凸起'),
        _item(
            RaisedButton(
              child: Text('Button2'),
              elevation: 5.0,
              highlightElevation: 5.0,
              disabledElevation: 5.0,
              textColor: Colors.indigo,
              onPressed: () {},
            ),
            '高亮按钮'),
        _item(
            RaisedButton(
              child: Text('Button3'),
              elevation: 0,
              highlightElevation: 0,
              disabledElevation: 0,
              textColor: Colors.indigo,
              onPressed: () {},
            ),
            '高亮按钮'),
        _item(
            RaisedButton(
              child: Text('Button4'),
              elevation: 0,
              shape: CircleBorder(),
              highlightElevation: 0,
              disabledElevation: 0,
              textColor: Colors.indigo,
              onPressed: () {},
            ),
            '原型按钮'),
        _item(
            RaisedButton(
              child: Container(
                width: 100,
                height: 100,
                child: Center(
                  child: Text('Button6'),
                ),
              ),
              highlightColor: Colors.white,
              hoverColor: Colors.white,
              focusColor: Colors.white,
              splashColor: Colors.white,
              color: Colors.white,
              elevation: 0,
              highlightElevation: 0,
              disabledElevation: 0,
              textColor: Colors.indigo,
              onPressed: () {
                print("Button6");
              },
            ),
            '原型按钮'),
        _item(
            FlatButton(
              child: Text('Button5'),
              textColor: Colors.indigo,
              onPressed: () {},
            ),
            'FlatButton'),
        _item(
            OutlineButton(
              child: Text('Button7'),
              borderSide: BorderSide(color: Colors.blue, width: 2),
              disabledBorderColor: Colors.black,
              highlightedBorderColor: Colors.red,
              onPressed: () {},
            ),
            'outLineButton'),
        _item(
            DropdownButton(
              icon: Icon(Icons.add),
              hint: Text('请选择'),
              value: _dropValue,
              items: [
                DropdownMenuItem(
                  child: Text('语文'),
                  value: '语文',
                ),
                DropdownMenuItem(
                  child: Text('数学'),
                  value: '数学',
                ),
                DropdownMenuItem(
                  child: Text('外语'),
                  value: '外语',
                ),
              ],
              onChanged: (v) {
                setState(() {
                  _dropValue = v;
                });
              },
            ),
            'DropdownButton'),
        _item(
            PopupMenuButton<String>(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.orange),
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              padding: EdgeInsets.all(5),
              color: Colors.red,
              itemBuilder: (context) {
                return <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: '语文',
                    child: Text('语文'),
                  ),
                  PopupMenuItem<String>(
                    value: '数学',
                    child: Text('数学'),
                  ),
                  PopupMenuItem<String>(
                    value: '外语',
                    child: Text('外语'),
                  ),
                ];
              },
              onSelected: (v) {},
              initialValue: '数学',
            ),
            'PopupMenuButton'),
        _item(
            IconButton(
              icon: Icon(Icons.person),
              tooltip: "图标",
              iconSize: 40,
              color: Colors.indigo,
              onPressed: () {},
            ),
            'IconButton'),
        _item(BackButton(), 'BackButton'),
        _item(CloseButton(), 'CloseButton'),
        _item(
            ButtonBar(
              mainAxisSize: MainAxisSize.max,
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(),
                RaisedButton(),
                RaisedButton(),
                RaisedButton(),
              ],
            ),
            'ButtonBar'),
        _item(
            Container(
              width: 200,
              height: 200,
              child: Banner(
                message: "老谢",
                child: Container(
                  color: Colors.yellow,
                ),
                location: BannerLocation.topEnd,
              ),
            ),
            'Banner'),
        _item(
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Baseline(
                  baseline: 50,
                  baselineType: TextBaseline.alphabetic,
                  child: Text(
                    'XXXkkkX',
                    style: TextStyle(
                        fontSize: 20, textBaseline: TextBaseline.alphabetic),
                  ),
                ),
                Baseline(
                  baseline: 50,
                  baselineType: TextBaseline.alphabetic,
                  child: Container(
                    width: 30,
                    height: 30,
                    color: Colors.red,
                  ),
                ),
                Baseline(
                  baseline: 50,
                  baselineType: TextBaseline.alphabetic,
                  child: Text(
                    'RYRYx',
                    style: TextStyle(
                        fontSize: 35, textBaseline: TextBaseline.alphabetic),
                  ),
                )
              ],
            ),
            'Baseline'),
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
