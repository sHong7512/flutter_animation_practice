import 'package:flutter/material.dart';

/**
 * AnimatedDefaultTextStyle는 TextSytle이 바뀔 때마다 자동적으로 애니메이션 합니다.
    📌 textAlign, softWrap, textOverflow, maxLines  속성은 애니메이션 변경할 때 즉시 적용되지 않습니다
 */

class AnimatedDefaultTextStyleScreen extends StatefulWidget {
  @override
  _AnimatedDefaultTextStyleScreenState createState() =>
      _AnimatedDefaultTextStyleScreenState();
}

class _AnimatedDefaultTextStyleScreenState
    extends State<AnimatedDefaultTextStyleScreen> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedDefaultTextStyle')),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            height: 120,
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 300),
              style: TextStyle(
                fontSize: 50.0,
                color: selected ? Colors.red : Colors.blueAccent,
                fontWeight: selected ? FontWeight.w100 : FontWeight.bold,
              ),
              child: Text('Flutter'),
            ),
          ),
        ),
      ),
    );
  }
}