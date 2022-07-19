import 'package:bk_flutter_pk/state/eventbus/event_bus.dart';
import 'package:flutter/material.dart';

class EventBusPageTest extends StatefulWidget {
  @override
  _EventBusPageTestState createState() => _EventBusPageTestState();
}

class _EventBusPageTestState extends State<EventBusPageTest> {
  String content = "";

  void eventBusFun(String v){
    setState(() {
      content = v;
    });
  }

  @override
  void initState() {
    super.initState();
    EventBus().registerObserver("test_event_bus", eventBusFun);
  }

  @override
  void dispose() {
    EventBus().unRegisterObserver("test_event_bus");
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('EventBus测试'),),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Column(
      children: <Widget>[
        Text('内容：《$content》'),
        RaisedButton(
          onPressed: (){
            if(content == null || content.length == 0){
              content = "老谢";
            }
            EventBus().sendMsg("￥$content￥");
          },
          child: Text('点击吧'),
        )
      ],
    );
  }
}
