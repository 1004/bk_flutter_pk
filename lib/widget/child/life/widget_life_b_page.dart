import 'package:bk_flutter_pk/main.dart';
import 'package:flutter/material.dart';

class WidgetLifePageB extends StatefulWidget {
  @override
  _WidgetLifePageBState createState() => _WidgetLifePageBState();
}

class _WidgetLifePageBState extends State<WidgetLifePageB> with WidgetsBindingObserver{
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    print("Life->B: initState");
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this); //销毁
    print("Life->B: dispose");
  }

  @override
  Future didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      print("Life->B: resumed");
    }else if(state == AppLifecycleState.inactive){
      print("Life->B: inactive");
    }else if(state == AppLifecycleState.paused){
      print("Life->B: paused");
    }else if(state == AppLifecycleState.detached){
      print("Life->B: detached");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('生命周期页面B'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ItemWidget("返回A", (){

          })
        ],
      ),
    );
  }
}

