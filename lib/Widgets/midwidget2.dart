import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/size_config.dart';

import 'aboutme_widget.dart';
import 'avatarwidget.dart';

final List<Widget> moneyExpenseAppImageList = [
  Image(
    image: AssetImage('images/moneyExpenseApp/moneyExpenseApp1.png'),
    height: 100,
    width: 150,
  ),
  Image(
    image: AssetImage('images/moneyExpenseApp/moneyExpenseApp2.png'),
    height: 100,
    width: 150,
  ),
  Image(
    image: AssetImage('images/moneyExpenseApp/moneyExpenseApp3.png'),
    height: 100,
    width: 150,
  ),
];

class MidWidget2 extends StatelessWidget {
  const MidWidget2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.widthProportionate(context, 70),
      height: SizeConfig.heightProportionate(context, 90),
      child: Column(
        children: [
          Container(
            height: SizeConfig.heightProportionate(context, 30),
            width: SizeConfig.widthProportionate(context, 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AvatarWidget(),
                AboutMeWidget(),
              ],
            ),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Container(
              color: kThemeBlackColor,
              width: SizeConfig.widthProportionate(context, 70),
              height: SizeConfig.heightProportionate(context, 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: SizeConfig.widthProportionate(context, 70),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Projects",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: SizeConfig.textSize(context, 1.2))),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FittedBox(
                        child: Row(
                          children: [
                            ProjectCard(),
                            ProjectCard(),
                          ],
                        ),
                      ),
                      FittedBox(
                        child: Row(
                          children: [
                            ProjectCard(),
                            ProjectCard(),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      //margin: const EdgeInsets.all(),
      /*decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.red, //                   <--- border color
          width: 5.0,
        ),
      ),*/
      //width: displayWidth(context) * 0.06,
    );
  }
}

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    Key key,
  }) : super(key: key);

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      color: kThemeDarkBlueColor,
      height: SizeConfig.heightProportionate(context, 25),
      child: Row(
        children: [
          FittedBox(
            child: Container(
              color: kThemeDarkBlueColor,
              height: SizeConfig.heightProportionate(context, 28),
              width: SizeConfig.widthProportionate(context, 20),
              child: Column(children: [
                CarouselSlider(
                  items: moneyExpenseAppImageList,
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
                  children: moneyExpenseAppImageList.map((item) {
                    int index = moneyExpenseAppImageList.indexOf(item);
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index
                            ? Color.fromRGBO(0, 0, 0, 0.9)
                            : Color.fromRGBO(0, 0, 0, 0.4),
                      ),
                    );
                  }).toList(),
                ),
              ]),
            ),
            /*child: Container(
              height: 100,
              width: 100,
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.vertical,
                  autoPlay: true,
                ),
                items: moneyExpenseAppImageList,
              ),
            ),*/
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Flexible(
                  flex: 1,
                  child: Text(
                    "Money Expenses App",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Text(
                  "Made using Flutter SDK \n See weekly Expenses \n Can Add new Transactions \n Delete Transactions \n Show Custom Chart",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
