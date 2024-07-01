import 'package:flutter/material.dart';
import 'package:myweb/core/constant/colorconstant.dart';

class Animatedcircularindicator extends StatelessWidget {
  const Animatedcircularindicator(
      {super.key, required this.percentage, required this.label});
  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text(
                    (value * 100).toInt().toString() + "%",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          maxLines: 1,
          label,
          style: Theme.of(context).textTheme.labelSmall,
        )
      ],
    );
  }
}
