import 'package:bk_flutter_pk/state/inherited/share_data_widget.dart';
import 'package:flutter/material.dart';

class TestShareDataWidget extends StatefulWidget {
  @override
  _TestShareDataWidgetState createState() => _TestShareDataWidgetState();
}

class _TestShareDataWidgetState extends State<TestShareDataWidget> {

  //父或祖先widget中的InheritedWidget改变(updateShouldNotify返回true)时会被调用。
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("_TestShareDataWidgetState didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _body(),
    );
  }


  Widget _body() {
    return Text(ShareDataWidget.of(context).data.toString());
  }
}
