import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';

class AnimUIWidget extends StatefulWidget {
  final String title;

  AnimUIWidget({this.title});

  @override
  _AnimUIWidgetState createState() => _AnimUIWidgetState();
}

class _AnimUIWidgetState extends State<AnimUIWidget>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    _animation = Tween<AlignmentGeometry>(
            begin: Alignment.topLeft, end: Alignment.bottomRight)
        .animate(_animationController);
  }

  @override
  void dispose() {
    if(_animationController != null && _animationController.isAnimating){
      _animationController.stop();
    }
    super.dispose();
  }

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            // _animationController.forward();
            _animationController.repeat(reverse: true);
          },
          child: Text('开始AlignTransition 动画'),
        ),
        RaisedButton(
          onPressed: () {
            _animationController.stop();
          },
          child: Text('结束AlignTransition 动画'),
        ),
        _alignTransitionShow(),
      ],
    );
  }


  Widget _alignTransitionShow() {
    return Container(
      width: 200,
      height: 200,
      color: Colors.blue,
      child: AlignTransition(
        alignment: _animation,
        child: Container(
          width: 30,
          height: 30,
          color: Colors.redAccent,
        ),
      ),
    );
  }
}
