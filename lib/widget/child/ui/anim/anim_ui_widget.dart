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
  TextStyle _defalutStyle;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    _animation = Tween<AlignmentGeometry>(
        begin: Alignment.topLeft, end: Alignment.bottomRight)
        .animate(_animationController);
    _defalutStyle = TextStyle(color: Colors.blue, fontSize: 14);
  }

  @override
  void dispose() {
    if (_animationController != null && _animationController.isAnimating) {
      _animationController.stop();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
        title: Text(widget.title ?? ''),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.menu),onPressed: (){},),
          IconButton(icon: Icon(Icons.add),onPressed: (){},)
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
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
          Divider(height: 1,),
          _animatedAlignWeidget(),
          Divider(height: 1,),
          _animationContainer(),
          Divider(height: 1,),
          _animatedCrossFadeWidget(),
          Divider(height: 1,),
          _testStyleChange(),
          Divider(height: 1,),
          _testAnimatedOpacity(),
          Divider(height: 1,),
          _testAnimatedPadding(),
        ],
      ),
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

  var _alignment = Alignment.topLeft;

  Widget _animatedAlignWeidget() {
    return Container(
      width: 200,
      height: 200,
      color: Colors.lightBlue,
      child: AnimatedAlign(
        alignment: _alignment,
        duration: Duration(seconds: 2),
        child: IconButton(
          onPressed: () {
            setState(() {
              _alignment = Alignment.bottomRight;
            });
          },
          icon: Icon(Icons.print, color: Colors.red, size: 30,),
        ),
      ),
    );
  }

  bool isChangeBig = false;

  _animationContainer() {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isChangeBig = !isChangeBig;
          });
        },
        child: AnimatedContainer(
          duration: Duration(seconds: 3),
          width: isChangeBig ? 200 : 100,
          height: isChangeBig ? 200 : 100,
          color: Colors.blue,
        ),
      ),
    );
  }

  bool _showFirst = true;

  _animatedCrossFadeWidget() {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            setState(() {
              _showFirst = !_showFirst;
            });
          },
          child: Text('切换'),
        ),
        AnimatedCrossFade(
          duration: Duration(seconds: 1),
          crossFadeState: _showFirst ? CrossFadeState.showFirst : CrossFadeState
              .showSecond,
          firstChild: Container(
            width: 150,
            height: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.blue),
            child: Text('firstChild', style: TextStyle(color: Colors.white),),
          ),
          secondChild: Container(
            width: 150,
            height: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(shape: BoxShape.rectangle,
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20)),
            child: Text('secondChild', style: TextStyle(color: Colors.white),),
          ),
        ),
      ],
    );
  }

  _testStyleChange() {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            setState(() {
              _defalutStyle = TextStyle(color: Colors.red, fontSize: 24);
            });
          },
          child: Text('字体变'),
        ),
        AnimatedDefaultTextStyle(
          duration: Duration(seconds: 2),
          child: Text('孙悟空'),
          style: _defalutStyle,
        )
      ],
    );
  }

  var _opacity = 1.0;
  _testAnimatedOpacity() {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('测试AnimatedOpacity'),
          onPressed: (){
            setState(() {
              _opacity = 0;
            });
          },
        ),
        AnimatedOpacity(
          opacity: _opacity,
          duration: Duration(seconds: 2),
          onEnd: (){

          },
          child: Container(
            width: 150,
            height: 150,
            color: Colors.blue,
          ),
        )
      ],
    );
  }

  var _pading = 0.0;
  _testAnimatedPadding(){
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('测试AnimatedPadding'),
          onPressed: (){
            setState(() {
              _pading = 50;
            });
          },
        )  ,
        AnimatedPadding(
          padding: EdgeInsets.symmetric(horizontal: _pading),
          duration: Duration(seconds: 2),
          child: Container(
            width: 100,
            height: 50,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}

