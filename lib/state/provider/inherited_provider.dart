import 'package:flutter/material.dart';

/// 报错需要跨组件的各种状态，也可以是数据
class InheritedProvider<T> extends InheritedWidget {
  final T data;

  ///子child就可以共享data
  InheritedProvider({@required this.data, @required Widget child})
      : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}
