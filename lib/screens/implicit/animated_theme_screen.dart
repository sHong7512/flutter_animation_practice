import 'package:flutter/material.dart';

/**
 * 지정된 Theme이 변경될 때마다 지정된 Duration 동안 색상 등을 자동으로 전환하는 Theme 애니메이션 버전.
 */

class AnimatedThemeScreen extends StatefulWidget {
  @override
  _AnimatedPositionedDirectionalScreenState createState() =>
      _AnimatedPositionedDirectionalScreenState();
}

class _AnimatedPositionedDirectionalScreenState
    extends State<AnimatedThemeScreen> with SingleTickerProviderStateMixin {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AnimatedTheme')),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: AnimatedTheme(
          data: selected ? ThemeData.light() : ThemeData.dark(),
          duration: const Duration(milliseconds: 500),
          child: Center(
            child: Card(
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'theme',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}