import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomShakeAnimation extends StatefulWidget {
  final Widget child;
  final String begin, end;
  const CustomShakeAnimation(
      {super.key, required this.begin, required this.end, required this.child});

  @override
  State<CustomShakeAnimation> createState() => _CustomShakeAnimationState();
}

class _CustomShakeAnimationState extends State<CustomShakeAnimation>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  late Animation<double> _shakeAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat(reverse: true);

    _shakeAnimation = Tween<double>(
            begin: double.parse(widget.begin), end: double.parse(widget.end))
        .animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("${widget.begin} ${widget.end}");
    }
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0.0, _shakeAnimation.value),
          child: child,
        );
      },
      child: widget.child,
    );
  }
}
