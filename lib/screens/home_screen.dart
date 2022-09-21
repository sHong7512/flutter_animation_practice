import 'package:animation_practice/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var routeKeys = routes.keys.toList();
    var keys = routeKeys.sublist(1, routeKeys.length);

    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Example'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: keys.map((key) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, key),
                child: Text(key.substring(1, key.length)),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
