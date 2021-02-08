import 'package:flutter/material.dart';
import 'dart:math';

class LoadingCircular extends StatefulWidget {
  @override
  _LoadingCircularState createState() => _LoadingCircularState();
}

class _LoadingCircularState extends State<LoadingCircular> with TickerProviderStateMixin {
  AnimationController _controllerAnimation;

  @override
  void initState() {
    super.initState();

    _controllerAnimation = AnimationController(vsync: this, duration: Duration(seconds: 2))..repeat();
  }

  @override
  void dispose() {
    _controllerAnimation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Center(
        child: AnimatedBuilder(
          animation: _controllerAnimation,
          builder: (_, child) {
            return Transform.rotate(
              angle: _controllerAnimation.value * 2 * pi,
              child: child,
            );
          },
          child: Stack(
            children: [
              Image.asset(
                "assets/ellipse_inside.png",
                width: 200,
                height: 200,
              ),
              Image.asset(
                "assets/ellipse_outside.png",
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
