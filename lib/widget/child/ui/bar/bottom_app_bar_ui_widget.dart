import 'package:flutter/material.dart';

class BottomAppBarUiWidget extends StatefulWidget {
  @override
  _BottomAppBarUiWidgetState createState() => _BottomAppBarUiWidgetState();
}

class _BottomAppBarUiWidgetState extends State<BottomAppBarUiWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        elevation: 8,
        notchMargin: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
            ),
            IconButton(
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text("Label"),
        icon: Icon(Icons.forward),
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(100)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
