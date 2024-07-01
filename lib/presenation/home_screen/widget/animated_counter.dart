import 'package:flutter/material.dart';
import 'package:myweb/core/constant/colorconstant.dart';

class AnimatedCounter_widget extends StatelessWidget {
  const AnimatedCounter_widget(
      {super.key, required this.value, required this.text});
  final int value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: defaultDuration,
      builder: (context, value, child) => Text(" $value$text",
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: primaryColor)),
    );
  }
}
