import 'package:flutter/material.dart';
import 'package:myweb/core/constant/colorconstant.dart';

class areainfo_text extends StatelessWidget {
  const areainfo_text({
    super.key,
    this.title,
    this.text,
  });
  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            text!,
          )
        ],
      ),
    );
  }
}
