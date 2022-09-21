import 'package:flutter/material.dart';

/**
 * 기본적으로 새 위젯과, AnimatedSwitcher에서 자식으로 설정 한 위젯 간에 크로스 페이드를 수행하는 위젯입니다.
 */

class AnimatedSwitcherScreen extends StatefulWidget {
  @override
  _AnimatedPositionedDirectionalScreenState createState() =>
      _AnimatedPositionedDirectionalScreenState();
}

class _AnimatedPositionedDirectionalScreenState
    extends State<AnimatedSwitcherScreen> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedSwitcher')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(child: child, scale: animation);
            },
            child: Text(
              '$_count',
              key: ValueKey<int>(_count),
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            child: ElevatedButton(
              child: const Text('Increment'),
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}