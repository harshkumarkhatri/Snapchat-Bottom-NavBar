import 'package:flutter/material.dart';

class del1 extends StatefulWidget {
  @override
  _del1State createState() => _del1State();
}

class _del1State extends State<del1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        color: Colors.red,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(child: Text("111111")));
  }
}