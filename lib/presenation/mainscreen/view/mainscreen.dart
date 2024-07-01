import 'package:flutter/material.dart';
import 'package:myweb/core/constant/colorconstant.dart';
import 'package:myweb/presenation/mainscreen/widget/slide_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                //this take (2+7=9) so 2/9=0.22 means 22%
                flex: 2,
                child: slidemenu(),
              ),
              SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                //it takes 7/9 = 0.78 means 78% width
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [...children],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
