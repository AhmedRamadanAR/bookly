import 'package:flutter/cupertino.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({required this.slidingAnimation, super.key});

  final Animation<Offset> slidingAnimation;


  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (BuildContext context, _) {
        return SlideTransition(position: slidingAnimation, child: const Text(
          "Read Free Books",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ));
      },
    );
  }
}