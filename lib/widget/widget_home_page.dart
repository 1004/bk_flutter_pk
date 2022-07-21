import 'package:bk_flutter_pk/main.dart';
import 'package:bk_flutter_pk/widget/bus/bus_house_jevel_widget.dart';
import 'package:bk_flutter_pk/widget/child/key/widget_key_test_page.dart';
import 'package:bk_flutter_pk/widget/child/layout/layout_page.dart';
import 'package:bk_flutter_pk/widget/child/template_ui_widget.dart';
import 'package:bk_flutter_pk/widget/child/ui/anim/anim_ui_widget.dart';
import 'package:bk_flutter_pk/widget/child/ui/chip/chip_ui_widget.dart';
import 'package:bk_flutter_pk/widget/child/ui/contrain/contrain_ui_widget.dart';
import 'package:bk_flutter_pk/widget/child/ui/dialog/dialog_ui_widget_test.dart';
import 'package:bk_flutter_pk/widget/child/ui/filter/back_drop_filter_ui_widget.dart';
import 'package:bk_flutter_pk/widget/child/ui/intercept/intercept_ui_widget.dart';
import 'package:bk_flutter_pk/widget/child/ui/location/location_ui_widget.dart';
import 'package:flutter/material.dart';

import 'child/life/widget_life_test_page.dart';
import 'child/ui/button/button_ui_widget.dart';

class WidgetHomePage extends StatefulWidget {
  @override
  _WidgetHomePageState createState() => _WidgetHomePageState();
}

class _WidgetHomePageState extends State<WidgetHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            ItemWidget("盘圆-钻石项目", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return BusHouseLevelWidget(title: "盘圆-钻石项目",);
              }));
            }),
            ItemWidget("Widget Key", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return WidgetKeyTestPage();
              }));
            }),
            ItemWidget("Widget 生命周期", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return WidgetLifePage();
              }));
            }),
            ItemWidget("常用Widget", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return WidgetKeyTestPage();
              }));
            }),
            ItemWidget("布局原理", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return LayoutPage();
              }));
            }),
            ItemWidget("弹窗", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return DialogUIWidgetTest();
              }));
            }),
            ItemWidget("拦截事件(AbsorbPointer)", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return InterceptUiWidget(title: "拦截事件(AbsorbPointer)",);
              }));
            }),
            ItemWidget("标签(Chip)", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ChipUiWidget(title: "标签(Chip)",);
              }));
            }),
            ItemWidget("位置(Align)", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return LocationUiWidget(title: "位置(Align)",);
              }));
            }),
            ItemWidget("动画(AlignTransition)", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return AnimUIWidget(title: "动画(AlignTransition)",);
              }));
            }),
            ItemWidget("约束(BoxConstraints)", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ConstrainUiWidget(title: "约束(BoxConstraints)",);
              }));
            }),
            ItemWidget("按钮(Button)", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ButtonUiWidget(title: "按钮(Button)",);
              }));
            }),
            ItemWidget("模糊(BackdropFilter)", () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return BackDropFitlerUiWidget(title: "模糊(BackdropFilter)",);
              }));
            }),
          ],
        ),
      ),
    );
  }
}
