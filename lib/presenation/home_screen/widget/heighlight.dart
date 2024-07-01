import 'package:flutter/material.dart';
import 'package:myweb/core/constant/colorconstant.dart';

class HeighLight extends StatelessWidget {
  const HeighLight({super.key, required this.counter, required this.label});
  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          label!,
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}
