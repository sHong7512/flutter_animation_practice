import 'package:flutter/material.dart';

/**
 * Stack위젯에서 자식의 위치를 제어하며 지정된 위치가 변경될 때마다 지정된 기간 동안 자녀의 위치를 자동으로 애니메이션 합니다.
 */

class AnimatedPositionedScreen extends StatefulWidget {
  @override
  _AnimatedPositionedScreenState createState() =>
      _AnimatedPositionedScreenState();
}

class _AnimatedPositionedScreenState extends State<AnimatedPositionedScreen> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedPositioned')),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              left: selected ? 10 : 100,
              top: selected ? 70 : 100,
              right: selected ? 10 : 100,
              bottom: selected ? 70 : 100,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}