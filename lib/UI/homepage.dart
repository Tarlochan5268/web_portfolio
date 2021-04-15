import 'package:flutter/material.dart';
import 'package:web_portfolio/Widgets/footer_widget.dart';
import 'package:web_portfolio/Widgets/midwidget.dart';
import 'package:web_portfolio/Widgets/sidewidget.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/size_config.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FittedBox(
              child: Container(
                color: kThemeBlackColor,
                height: SizeConfig.heightProportionate(context, 90),
                width: SizeConfig.displayWidth(context),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  // Testing
                  children: [
                    SizedBox(
                      width: SizeConfig.widthProportionate(context, 10),
                      height: SizeConfig.heightProportionate(context, 90),
                    ),
                    MidWidget(),
                    FittedBox(child: SideWidget()),
                  ],
                ),
              ),
            ),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
