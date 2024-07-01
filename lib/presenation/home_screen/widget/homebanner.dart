import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myweb/core/constant/colorconstant.dart';

class HomeBannert extends StatelessWidget {
  const HomeBannert({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover My Amazing \nArt Space!",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                MybuildAnimatedText(),
                SizedBox(
                  height: defaultPadding,
                ),
                // ElevatedButton(
                //     onPressed: () {},
                //     style: TextButton.styleFrom(
                //         padding: EdgeInsets.symmetric(
                //             horizontal: defaultPadding * 2,
                //             vertical: defaultPadding),
                //         backgroundColor: primaryColor),
                //     child: Text(
                //       "EXPLORE NOW",
                //       style: TextStyle(color: darkColor),
                //     ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MybuildAnimatedText extends StatelessWidget {
  const MybuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleMedium!,
      child: Row(
        children: [
          Flutter_text(),
          SizedBox(
            height: defaultPadding / 2,
          ),
          Text("I Build "),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                "Responsive web and mobile app.",
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                "Complete e-commerse app UI.",
                speed: Duration(milliseconds: 60),
              ),
              TyperAnimatedText(
                "chat app with dark and light theme.",
                speed: Duration(milliseconds: 60),
              ),
            ],
          ),
          SizedBox(
            height: defaultPadding / 2,
          ),
          Flutter_text(),
        ],
      ),
    );
  }
}

class Flutter_text extends StatelessWidget {
  const Flutter_text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "Flutter",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">")
        ],
      ),
    );
  }
}
