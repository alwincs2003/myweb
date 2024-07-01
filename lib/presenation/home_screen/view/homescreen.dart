import 'package:flutter/material.dart';
import 'package:myweb/core/constant/colorconstant.dart';
import 'package:myweb/core/database/projects.dart';
import 'package:myweb/presenation/home_screen/widget/heighlightinfo.dart';
import 'package:myweb/presenation/home_screen/widget/homebanner.dart';
import 'package:myweb/presenation/mainscreen/view/mainscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBannert(),
        HeighLightInfo(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Myprojects",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(
              height: defaultPadding,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: demo_projects.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.3,
                  crossAxisSpacing: defaultPadding,
                  mainAxisSpacing: defaultPadding),
              itemBuilder: (context, index) => Projectcard(
                project: demo_projects[index],
              ),
            )
          ],
        ),
      ],
    );
  }
}

class Projectcard extends StatelessWidget {
  const Projectcard({super.key, required this.project});
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            project.description!,
            style: TextStyle(height: 1.5),
          )
        ],
      ),
    );
  }
}
