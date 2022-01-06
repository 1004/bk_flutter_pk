import 'package:flutter/material.dart';

/// 装载观察者，用来通知数据变化
class MyChangeNotifier implements Listenable{
  List<VoidCallback> listeners = [];

  ///添加观察者 VoidCallback listener
  @override
  void addListener(listener) {
    listeners.add(listener);
  }

  ///移除观察者  VoidCallback listener
  @override
  void removeListener(listener) {
    listeners.remove(listener);
  }

  ///通知监听
  void notifyListener(){
    listeners.forEach((item)=>item());
  }

}