import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myweb/core/constant/colorconstant.dart';

import 'package:myweb/presenation/mainscreen/widget/areainfo_text.dart';
import 'package:myweb/presenation/mainscreen/widget/coding.dart';
import 'package:myweb/presenation/mainscreen/widget/knowledge.dart';
import 'package:myweb/presenation/mainscreen/widget/my_info.dart';
import 'package:myweb/presenation/mainscreen/widget/skills_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class slidemenu extends StatefulWidget {
  const slidemenu({
    super.key,
  });

  @override
  State<slidemenu> createState() => _slidemenuState();
}

class _slidemenuState extends State<slidemenu> {
  @override
  Widget build(BuildContext context) {
    void _urlluancher(String urlstring) async {
      final Uri url = Uri.parse(urlstring);
      if (await canLaunchUrl(url)) {
        launchUrl(url);
      } else {
        throw "NOt Able to lanch";
      }
    }

    return Drawer(
      child: Column(
        children: [
          my_info(),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                areainfo_text(
                  title: "State",
                  text: "Kerala",
                ),
                areainfo_text(
                  title: "City",
                  text: "Thrissur",
                ),
                areainfo_text(
                  title: "Email",
                  text: "alwincs02@gmail.com",
                ),
                areainfo_text(
                  title: "Phone ",
                  text: "+91 7994045827",
                ),
                Skills(),
                SizedBox(
                  height: defaultPadding,
                ),
                Coding(),
                Knowledge(),
                Divider(),
                SizedBox(
                  height: defaultPadding / 2,
                ),
                TextButton(
                  onPressed: () {},
                  child: FittedBox(
                    child: Row(
                      children: [
                        Text(
                          "Download CV",
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyLarge!.color),
                        ),
                        SizedBox(
                          width: defaultPadding,
                        ),
                        SvgPicture.asset("assets/icons/download.svg")
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: defaultPadding / 2),
                  color: Color(0xff24242e),
                  child: Row(
                    children: [
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          _urlluancher(
                              "https://www.linkedin.com/in/alwin-shaju-0a7b82284/");
                        },
                        icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                      ),
                      IconButton(
                        onPressed: () {
                          _urlluancher("https://github.com/");
                        },
                        icon: SvgPicture.asset("assets/icons/github.svg"),
                      ),
                      IconButton(
                        onPressed: () {
                          _urlluancher(
                              "https://x.com/i/flow/login?input_flow_data=%7B%22requested_variant%22%3A%22eyJteCI6IjIifQ%3D%3D%22%7D");
                        },
                        icon: SvgPicture.asset("assets/icons/twitter.svg"),
                      ),
                      Spacer(),
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
