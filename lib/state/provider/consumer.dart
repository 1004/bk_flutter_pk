import 'package:bk_flutter_pk/state/provider/change_notifier_provider.dart';
import 'package:flutter/material.dart';

class Consumer<T> extends StatelessWidget {
  final Widget Function(BuildContext context, T value) builder;

  Consumer({Key key, @required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return builder(context, ChangeNotifierProvider.of(context));
  }
}
