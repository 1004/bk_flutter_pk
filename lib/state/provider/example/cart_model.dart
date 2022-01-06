import 'dart:collection';

import 'package:bk_flutter_pk/state/provider/change_notifier.dart';
import 'package:bk_flutter_pk/state/provider/example/Item.dart';

class CartModel extends MyChangeNotifier {
  final List<Item> _items = [];

  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  double get totalPrice =>
      _items.fold(0, (value, item) => value + item.count * item.price);

  ///添加内容
  void add(Item item) {
    _items.add(item);
    notifyListener();
  }
}
