import 'package:flutter/material.dart';
///
/// ConstrainedBox：适用于需要设置最大/小宽高，组件大小以来子组件大小，但不能超过设置的界限。
// UnconstrainedBox：用到情况不多，当作ConstrainedBox的子组件可以“突破”ConstrainedBox的限制，超出界限的部分会被截取。
// SizedBox：适用于固定宽高的情况，常用于当作2个组件之间间隙组件。
// AspectRatio：适用于固定宽高比的情况。
// FractionallySizedBox：适用于占父组件百分比的情况。
// LimitedBox：适用于没有父组件约束的情况。
// Container：适用于不仅有尺寸的约束，还有装饰（颜色、边框、等）、内外边距等需求的情况。
///
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
        _constrainedBoxTest(),
        _aspectRatioTest(),

      ],
    );
  }

  Widget _constrainedBoxTest(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('ConstrainedBox'),
        SizedBox(height: 10,),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 60,
            maxWidth: 200
          ),
          child: Container(
            width: 300,
            height: 300,
            color: Colors.red,
          ),
        )
      ],
    );
  }
  Widget _aspectRatioTest(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('AspectRatio'),
        SizedBox(height: 10,),
        AspectRatio(
          aspectRatio: 2/1,
          child: Container(
            width: double.infinity,
            color: Colors.blue,
            child: FractionallySizedBox(
              widthFactor: .5,
              heightFactor: .2,
              alignment: Alignment.bottomLeft,
              child: Container(
                color: Colors.orange,
                child: RaisedButton(
                  child: Text('button1'),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
