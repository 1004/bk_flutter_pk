import 'package:flutter/material.dart';

class ShareDataWidget extends InheritedWidget {
  final int data;

  ShareDataWidget({Key key, @required this.data, @required Widget child})
      : super(key:key,child:child);

  //定义一个便捷的方法，方便子树中获取widget共享数据
  static ShareDataWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
  }

  //data变化的时候，是否通知子树种的依赖data更新
  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    return oldWidget.data != data;
  }
}
