import 'package:flutter/material.dart';
import 'package:myweb/core/constant/colorconstant.dart';
import 'package:myweb/presenation/mainscreen/widget/animated_linear_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Coding", style: Theme.of(context).textTheme.labelSmall),
        ),
        AnimatedLinearprogressindicator(
          percentage: 0.8,
          label: "Dart",
        ),
        AnimatedLinearprogressindicator(
          percentage: 0.68,
          label: "HTML",
        ),
        AnimatedLinearprogressindicator(
          percentage: 0.55,
          label: "C",
        ),
        AnimatedLinearprogressindicator(
          percentage: 0.45,
          label: "python",
        )
      ],
    );
  }
}
