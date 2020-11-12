import 'package:flutter/material.dart';

class del2 extends StatefulWidget {
  @override
  _del2State createState() => _del2State();
}

class _del2State extends State<del2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        color: Colors.red,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(child: Text("2222222")));
  }
}