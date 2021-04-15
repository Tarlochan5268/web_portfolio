import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/Models/project.dart';
import 'package:web_portfolio/Widgets/red_border_button.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/size_config.dart';

class ProjectCard extends StatefulWidget {
  final Project project;

  const ProjectCard({
    Key key,
    @required this.project,
  }) : super(key: key);

  @override
  _ProjectCardState createState() => _ProjectCardState(project);
}

class _ProjectCardState extends State<ProjectCard> {
  final Project project;
  int _current = 0;

  _ProjectCardState(this.project);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      color: kThemeDarkBlueColor,
      height: SizeConfig.heightProportionate(context, 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            child: Container(
              color: kThemeDarkBlueColor,
              height: SizeConfig.heightProportionate(context, 45),
              width: SizeConfig.widthProportionate(context, 35),
              child: Column(children: [
                CarouselSlider(
                  items: project.projectImages,
                  options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 1.5,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: project.projectImages.map((item) {
                    int index = project.projectImages.indexOf(item);
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index ? Colors.white : Colors.grey,
                      ),
                    );
                  }).toList(),
                ),
              ]),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Flexible(
                  flex: 1,
                  child: Text(
                    "${project.projectName}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.textSize(context, 1.4),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Text(
                  "${project.projectDescription}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.5,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
              Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: RedBorderButton(
                      marginTrue: true,
                      text: 'View',
                      onPressedFunc: () {
                        launch("${project.projectURL}");
                      },
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
