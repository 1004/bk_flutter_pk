import 'package:bk_flutter_pk/main.dart';
import 'package:bk_flutter_pk/widget/child/life/widget_life_b_page.dart';
import 'package:flutter/material.dart';

class WidgetLifePageA extends StatefulWidget {
  @override
  _WidgetLifePageAState createState() => _WidgetLifePageAState();
}

class _WidgetLifePageAState extends State<WidgetLifePageA> with WidgetsBindingObserver{
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    print("Life->A: initState");
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this); //销毁
    print("Life->A: dispose");
  }

  @override
  Future didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      print("Life->A: resumed");
    }else if(state == AppLifecycleState.inactive){
      print("Life->A: inactive");
    }else if(state == AppLifecycleState.paused){
      print("Life->A: paused");
    }else if(state == AppLifecycleState.detached){
      print("Life->A: detached");
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Life->A: didChangeDependencies");
  }


  @override
  void deactivate() {
    super.deactivate();
    print("Life->A: deactivate");
  }

  @override
  Widget build(BuildContext context) {
    print("Life->A: build");

    return Scaffold(
      appBar: AppBar(
        title: Text('生命周期页面A'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ItemWidget("启动B", (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return WidgetLifePageB();
            }));
          })
        ],
      ),
    );
  }
}

