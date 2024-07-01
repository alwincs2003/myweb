import 'package:flutter/material.dart';
import 'package:myweb/core/constant/colorconstant.dart';
import 'package:myweb/presenation/mainscreen/widget/animated_circular_indigator.dart';

class Skills extends StatelessWidget {
  const Skills({
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
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ), //now we need animation
        Row(
          children: [
            Expanded(
              child: Animatedcircularindicator(
                percentage: 0.8,
                label: "Flutter",
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: Animatedcircularindicator(
                percentage: 0.75,
                label: "Git",
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: Animatedcircularindicator(
                percentage: 0.55,
                label: "Firebase",
              ),
            ),
          ],
        )
      ],
    );
  }
}
