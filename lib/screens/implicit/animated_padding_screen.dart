import 'package:flutter/material.dart';

/**
 * 패딩이 변경되면  자동으로 애니메이션 합니다. 애니메이션 버전의 Padding입니다.
 */

class AnimatedPaddingScreen extends StatefulWidget {
  @override
  _AnimatedPaddingScreenState createState() => _AnimatedPaddingScreenState();
}

class _AnimatedPaddingScreenState extends State<AnimatedPaddingScreen> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedPadding')),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            height: 300.0,
            width: 300.0,
            child: AnimatedPadding(
              padding: selected
                  ? EdgeInsets.only(top: 100, bottom: 100)
                  : EdgeInsets.only(left: 100, right: 100),
              curve: Curves.ease,
              duration: Duration(seconds: 1),
              child: Container(
                color: Colors.blue,
                child: Center(child: Text('Flutter')),
              ),
            ),
          ),
        ),
      ),
    );
  }
}