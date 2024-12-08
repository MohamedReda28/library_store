
import 'dart:ui';

import 'package:flutter/material.dart';

class SlidingTextAnimation extends StatelessWidget {
  const SlidingTextAnimation({
    super.key,
    required this.textanimated,
  });

  final Animation<Offset> textanimated;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: textanimated,
        builder: (BuildContext context, _) {
    
          return  SlideTransition(
              position: textanimated,
              child: const Text('read free books',
                  textAlign: TextAlign.center));
        });
  }
}
