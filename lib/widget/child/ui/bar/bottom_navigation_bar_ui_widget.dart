import 'package:flutter/material.dart';

class BottomNavigatioBarUiWidget extends StatefulWidget {
  @override
  _BottomNavigatioBarUiWidgetState createState() =>
      _BottomNavigatioBarUiWidgetState();
}

class _BottomNavigatioBarUiWidgetState
    extends State<BottomNavigatioBarUiWidget> {
  int _currentIndex = 0;
  Widget _currBody = HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currBody,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          _onTap(index);
        },
        currentIndex: _currentIndex,
        // type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(title: Text("首页"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text("书籍"), icon: Icon(Icons.book)),
          BottomNavigationBarItem(
              title: Text("我的"), icon: Icon(Icons.perm_identity)),
        ],
      ),
    );
  }

  _onTap(int index) {
    switch (index) {
      case 0:
        _currBody = HomePage();
        break;
      case 1:
        _currBody = BookPage();
        break;
      case 2:
        _currBody = MyPage();
        break;
    }
    setState(() {
      _currentIndex = index;
    });
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('HomePage'),
    );
  }
}

class BookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('BookPage'),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('MyPage'),
    );
  }
}
