import 'package:flutter/material.dart';

/**
 * 주어진 자녀의 크기가 변할 때마다 주어진 기간 동안 자동으로 크기를 전환하는 애니메이션 위젯
 */

class AnimatedSizeScreen extends StatefulWidget {
  @override
  _AnimatedPositionedDirectionalScreenState createState() =>
      _AnimatedPositionedDirectionalScreenState();
}

class _AnimatedPositionedDirectionalScreenState
    extends State<AnimatedSizeScreen> with SingleTickerProviderStateMixin {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedSize')),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Container(
          height: 300,
          child: Center(
            child: AnimatedSize(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              // vsync: this,
              child: Container(
                width: selected ? 300 : 200,
                height: selected ? 160 : 200,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}