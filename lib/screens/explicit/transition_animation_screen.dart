import 'package:flutter/material.dart';

class TransitionAnimationScreen extends StatefulWidget {
  const TransitionAnimationScreen({Key? key}) : super(key: key);

  @override
  State<TransitionAnimationScreen> createState() =>
      _TransitionAnimationScreenState();
}

class _TransitionAnimationScreenState extends State<TransitionAnimationScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInToLinear,
  );

  late final AnimationController _rotationController = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  );

  late final Animation<double> _rotationAnimation =
      CurvedAnimation(parent: _rotationController, curve: Curves.bounceIn);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Explicit Animation'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: _animation,
              child: Container(
                color: Colors.green,
                width: 300,
                height: 100,
              ),
            ),
            const SizedBox(height: 30),
            RotationTransition(
              turns: _rotationAnimation,
              child: GestureDetector(
                onTap: () {
                  switch (_rotationController.status) {
                    case AnimationStatus.dismissed:
                      _rotationController.forward();
                      break;
                    case AnimationStatus.completed:
                      _rotationController.reverse();
                      break;
                    default:
                  }
                },
                child: Container(
                  margin: EdgeInsets.all(90),
                  color: Colors.lightGreen,
                  width: 300,
                  height: 100,
                  child: Text("탭하면 애니메이션 시작"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
