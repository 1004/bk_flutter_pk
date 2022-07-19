import 'package:bk_flutter_pk/state/provider/change_notifier.dart';
import 'package:bk_flutter_pk/state/provider/inherited_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangeNotifierProvider<T extends MyChangeNotifier>
    extends StatefulWidget {
  final Widget child;
  final T data;

  ChangeNotifierProvider({this.child, this.data});

  /// 获取全局共享数据，其实就是一个回调管理器, 这样任意一个位置都能注册状态监听
  static T of<T>(BuildContext context,{bool listen=true}) {
    // final type = _typeOf<InheritedProvider<T>>();
    final provider =
        listen
        ? context.dependOnInheritedWidgetOfExactType<InheritedProvider<T>>()
        : context.getElementForInheritedWidgetOfExactType<InheritedProvider<T>>().widget as InheritedProvider<T>;
    return provider.data;
  }

  @override
  _ChangeNotifierProvider<T> createState() => _ChangeNotifierProvider<T>();
}

class _ChangeNotifierProvider<T extends MyChangeNotifier>
    extends State<ChangeNotifierProvider<T>> {
  void updata() {
    setState(() {});
  }

  @override
  void didUpdateWidget(ChangeNotifierProvider<T> oldWidget) {
    //当provider 更新时候，新旧数据不一致，则解绑就数据，添加新数据
    if (widget.data != oldWidget.data) {
      MyChangeNotifier oldData = oldWidget.data;
      oldData.removeListener(updata);
      MyChangeNotifier newData = widget.data;
      newData.addListener(updata);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    //给model 添加监听
    MyChangeNotifier newData = widget.data;
    newData.addListener(updata);
    super.initState();
  }

  @override
  void dispose() {
    MyChangeNotifier newData = widget.data;
    newData.removeListener(updata);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InheritedProvider<T>(
      data: widget.data,
      child: widget.child,
    );
  }
}
