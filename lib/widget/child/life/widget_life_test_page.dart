import 'package:bk_flutter_pk/main.dart';
import 'package:bk_flutter_pk/widget/child/life/widget_life_a_page.dart';
import 'package:flutter/material.dart';

class WidgetLifePage extends StatefulWidget {
  @override
  _WidgetLifePageState createState() => _WidgetLifePageState();
}

class _WidgetLifePageState extends State<WidgetLifePage> with WidgetsBindingObserver{
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    print("Life->WidgetLifePage: initState");
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this); //销毁
    print("Life->WidgetLifePage: dispose");
  }

  @override
  Future didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      print("Life->WidgetLifePage: resumed");
    }else if(state == AppLifecycleState.inactive){
      print("Life->WidgetLifePage: inactive");
    }else if(state == AppLifecycleState.paused){
      print("Life->WidgetLifePage: paused");
    }else if(state == AppLifecycleState.detached){
      print("Life->WidgetLifePage: detached");
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Life->WidgetLifePage: didChangeDependencies");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("Life->WidgetLifePage: deactivate");
  }

  @override
  Widget build(BuildContext context) {
    print("Life->WidgetLifePage: build");
    return Scaffold(
      appBar: AppBar(
        title: Text('生命周期开始页面-start'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ItemWidget("启动A", (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return WidgetLifePageA();
            }));
          })
        ],
      ),
    );
  }
}

