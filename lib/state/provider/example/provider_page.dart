import 'package:bk_flutter_pk/state/provider/change_notifier_provider.dart';
import 'package:bk_flutter_pk/state/provider/consumer.dart';
import 'package:bk_flutter_pk/state/provider/example/Item.dart';
import 'package:bk_flutter_pk/state/provider/example/cart_model.dart';
import 'package:flutter/material.dart';

class ProviderPage extends StatefulWidget {
  @override
  _ProviderPageState createState() => _ProviderPageState();
}

class _ProviderPageState extends State<ProviderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("简易Provider"),
      ),
      body: _body(),
    );
  }

  _body() {
    return Center(
      child: ChangeNotifierProvider(
        data: CartModel(),
        child: Builder(builder: (context) {
          return Column(
            children: <Widget>[
              Consumer<CartModel>(builder: (context, cart) {
                return Text("总价:${cart.totalPrice}");
              }),
              Builder(builder: (context) {
                print("Button build");
                return RaisedButton(
                    onPressed: () {
                      ChangeNotifierProvider.of<CartModel>(context,
                              listen: false)
                          .add(Item(20, 23.0));
                    },
                    child: Text("添加商品"));
              })
            ],
          );
        }),
      ),
    );
  }
}
