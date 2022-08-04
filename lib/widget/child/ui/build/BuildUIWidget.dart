import 'package:flutter/material.dart';
///
/// Builder 里的Context 是组件内的上下文，可以往上找资源，能找到
/// 如果使用当前page全局的context 那么，往上找，就会找不到Scaffold，
/// 所以上下文有个范围的问题
class BuildUiWidgetTest extends StatefulWidget {
  final String title;

  BuildUiWidgetTest({this.title});

  @override
  _BuildUiWidgetTestState createState() => _BuildUiWidgetTestState();
}

class _BuildUiWidgetTestState extends State<BuildUiWidgetTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? ''),
      ),
      body: _buildBody(),
      // body: Builder(
      //   builder: (context) =>
      //       Center(
      //         child: RaisedButton(
      //           color: Colors.pink,
      //           textColor: Colors.white,
      //           onPressed: () => _displaySnackBar(context),
      //           child: Text('老孟'),
      //         ),
      //       ),
      // ),
    );
  }

  Widget _buildBody() {
    return Builder(
        builder: (mctx) => Center(
              child: RaisedButton(
                color: Colors.pink,
                textColor: Colors.white,
                onPressed: ()=>_displaySnackBar(mctx),
                child: Text('show SnackBar'),
              ),
            ));
  }

  _displaySnackBar(BuildContext context) {
    final snackBar = SnackBar(content: Text('孙悟空'));
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
