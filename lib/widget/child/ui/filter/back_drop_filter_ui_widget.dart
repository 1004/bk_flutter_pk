import 'dart:ui';

import 'package:flutter/material.dart';

class BackDropFitlerUiWidget extends StatefulWidget {
  final String title;

  BackDropFitlerUiWidget({this.title});

  @override
  _BackDropFitlerUiWidgetState createState() => _BackDropFitlerUiWidgetState();
}

class _BackDropFitlerUiWidgetState extends State<BackDropFitlerUiWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? ''),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return _backDropFilter();
  }

  _backDropFilter(){
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 400,
          child: Image.asset('assets/meinv.png'),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0,sigmaY: 5.0),
          child: Center(
            child: Container(
              color: Colors.red.withOpacity(0),
              child: Text('么女'),
            ),
          ),
        )
      ],
    );
  }
}
