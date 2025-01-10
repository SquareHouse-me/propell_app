import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScalesTransitionAnimation extends StatefulWidget {
  final Widget child;
 

  const ScalesTransitionAnimation(
      {super.key, required this.child,  });

  @override
  State<ScalesTransitionAnimation> createState() =>
      _ScalesTransitionAnimationState();
}

class _ScalesTransitionAnimationState extends State<ScalesTransitionAnimation>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    // Define the slide animation

    400.milliseconds.delay().then(
          (value) => _animationController.forward(),
        );
    // Start the animation
    
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animationController,
      child: widget.child,
    );
  }
}
