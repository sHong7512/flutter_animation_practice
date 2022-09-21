import 'package:flutter/material.dart';

/**
 * 지정된 opacity가 변경될 때마다 지정된 duration 동안 child의 opacity를 자동으로 애니메이션 합니다.
 */

class AnimatedOpacityScreen extends StatefulWidget {
  @override
  _AnimatedOpacityScreenState createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedOpacity')),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            height: 120.0,
            width: 120.0,
            color: Colors.blue[50],
            child: AnimatedOpacity(
              opacity: selected ? 0.0 : 1.0,
              duration: Duration(milliseconds: 500),
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ),
        ),
      ),
    );
  }
}