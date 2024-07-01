import 'package:flutter/material.dart';
import 'package:myweb/core/constant/colorconstant.dart';
import 'package:myweb/presenation/home_screen/widget/animated_counter.dart';
import 'package:myweb/presenation/home_screen/widget/heighlight.dart';

class HeighLightInfo extends StatelessWidget {
  const HeighLightInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeighLight(
            counter: AnimatedCounter_widget(
              value: 5,
              text: "+",
            ),
            label: "Github Projects",
          ),
          HeighLight(
            counter: AnimatedCounter_widget(
              value: 7,
              text: "+",
            ),
            label: "TechKnowledgeis",
          ),
          HeighLight(
            counter: AnimatedCounter_widget(
              value: 100,
              text: "+",
            ),
            label: "Commits",
          ),
          HeighLight(
            counter: AnimatedCounter_widget(
              value: 1,
              text: "+",
            ),
            label: "Year of Experience",
          ),
        ],
      ),
    );
  }
}
