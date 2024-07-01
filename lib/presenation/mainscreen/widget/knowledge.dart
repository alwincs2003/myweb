import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myweb/core/constant/colorconstant.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
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
            "Knowledge",
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
        KnowledgeText(
          text: "Flutter, dart",
        ),
        KnowledgeText(
          text: "Git Knowledge",
        ),
        KnowledgeText(
          text: "Hive",
        ),
        KnowledgeText(
          text: "Microsoft Office",
        )
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(
            height: defaultPadding / 2,
          ),
          Text(text)
        ],
      ),
    );
  }
}
