import 'package:flutter/material.dart';

class my_info extends StatelessWidget {
  const my_info({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xff191923),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(
              flex: 2,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/myimg.jpg"),
            ),
            Spacer(),
            Text(
              "Alwin Shaju",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              "Flutter Developer & Bsc graduate",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
