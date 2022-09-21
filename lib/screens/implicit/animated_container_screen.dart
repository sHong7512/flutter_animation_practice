import 'package:flutter/material.dart';


/**
 * AnimatedContainer는 일정 기간 동안 점차적으로 값을 변경하는 Container 애니메이션 버전입니다.
    📌이전 값과 새로운 값 사이를 자동적으로 애니메이션 합니다. (Curve와 Duration 사용)
    📌속성 값이 null인 것은 애니메이션 하지 않습니다.
    📌자식은 애니메이션 하지 않습니다.
    📌Color, Border, BorderRadii, BackgroundImages, Shadows, Gradients, Shape, Padding, Width, Height, Alignment, Transforms.. 등등을 애니메이션 할 수 있습니다.
 */


class AnimatedContainerScreen extends StatefulWidget {
  @override
  _AnimatedContainerScreenState createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedContainer')),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            width: selected ? 300.0 : 100.0,
            height: selected ? 100.0 : 300.0,
            alignment:
            selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: Duration(milliseconds: 1000),
            decoration: BoxDecoration(
              border: selected
                  ? Border.all(color: Colors.black, width: 3)
                  : Border.all(color: Colors.red, width: 3),
              gradient: new LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: selected
                    ? [Colors.lightGreen, Colors.redAccent]
                    : [Colors.orange, Colors.deepOrangeAccent],
                stops: [0.0, 1.0],
              ),
              color: selected ? Colors.red : Colors.blue,
            ),
            curve: Curves.fastOutSlowIn,
            child: FlutterLogo(size: 75),
          ),
        ),
      ),
    );
  }
}