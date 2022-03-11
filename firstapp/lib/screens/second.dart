import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  _getContainer(Color color, {double width = 50, double height = 50}) {
    return Container(
      color: color,
      width: width,
      height: height,
    );
  }

  _getText(String txt, {double fontSize = 20}) {
    return Text(
      txt,
      style: TextStyle(fontSize: fontSize),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.baseline,
        // textBaseline: TextBaseline.ideographic,
        mainAxisSize: MainAxisSize.max,
        // mainAxisSize: MainAxisSize.min, // packs the content
        children: [
          _getContainer(Colors.red),
          _getContainer(Colors.blue, width: 100, height: 100),
          _getContainer(Colors.green)
          // _getText("Hi"),
          // _getText("Hola", fontSize: 50),
          // _getText("Hello")
        ],
      )),
    );
  }
}
