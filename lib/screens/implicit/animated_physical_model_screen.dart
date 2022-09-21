import 'package:flutter/material.dart';

/**
 *  borderRadius와 elevation이 변경될 때마다 자동으로 애니메이션 됩니다. PhysicalModel의 애니메이션 버전입니다.
    📌 shape는 애니메이션 되지 않습니다.
 */

class AnimatedPhysicalModelScreen extends StatefulWidget {
  @override
  _AnimatedPhysicalModelScreenState createState() =>
      _AnimatedPhysicalModelScreenState();
}

class _AnimatedPhysicalModelScreenState
    extends State<AnimatedPhysicalModelScreen> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedPhysicalModel')),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedPhysicalModel(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            elevation: selected ? 0 : 6.0,
            shape: BoxShape.rectangle,
            shadowColor: Colors.black,
            color: Colors.white,
            borderRadius: selected
                ? const BorderRadius.all(Radius.circular(0))
                : const BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 120.0,
              width: 120.0,
              color: Colors.blue[50],
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