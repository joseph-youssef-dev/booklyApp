import 'package:flutter/material.dart';

class AnimatedSlidingText extends StatelessWidget {
  const AnimatedSlidingText({super.key, required this.slidingAanimation});

  final Animation<Offset> slidingAanimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAanimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAanimation,
          child: const Text("Read Free Books", textAlign: TextAlign.center),
        );
      },
    );
  }
}
