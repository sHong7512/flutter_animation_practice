import 'package:flutter/material.dart';

/**
 *  지정된 Align(정렬)이 변경될 때마다 지정된 Duration동안 자동으로 child의 위치를 전환하는 애니메이션 버전의 Align입니다
 */

class AnimatedAlignScreen extends StatefulWidget {
  @override
  _AnimatedAlignScreenState createState() => _AnimatedAlignScreenState();
}

class _AnimatedAlignScreenState extends State<AnimatedAlignScreen> {
  var alignment = Alignment.bottomLeft;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedAlign')),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: AnimatedAlign(
                alignment: alignment,
                duration: Duration(milliseconds: 500),
                child: FlutterLogo(size: 150),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent
              ),
              child: Text('alignment change'),
              onPressed: () {
                setState(() {
                  alignment = alignment == Alignment.bottomLeft
                      ? Alignment.topRight
                      : Alignment.bottomLeft;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}