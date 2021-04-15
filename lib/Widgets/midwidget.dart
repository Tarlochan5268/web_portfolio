import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/Models/get_data.dart';
import 'package:web_portfolio/Widgets/manually_controlled_slider.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/size_config.dart';

import 'aboutme_widget.dart';
import 'avatarwidget.dart';
import 'midwidget2.dart';

class MidWidget extends StatelessWidget {
  const MidWidget({
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
          MiddleProjectsWidget(),
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

class MiddleProjectsWidget extends StatelessWidget {
  const MiddleProjectsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Container(
        color: kThemeBlackColor,
        width: SizeConfig.widthProportionate(context, 70),
        height: SizeConfig.heightProportionate(context, 60),
        child: Column(
          children: [
            Container(
              width: SizeConfig.widthProportionate(context, 70),
              height: SizeConfig.heightProportionate(context, 5),
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
            Expanded(child: ManuallyControlledSlider()),
            /*Column(
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
            )*/
          ],
        ),
      ),
    );
  }
}
