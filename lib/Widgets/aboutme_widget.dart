import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/size_config.dart';

import 'icon_midwidget.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        padding: EdgeInsets.only(
          left: SizeConfig.widthProportionate(context, 2),
          top: SizeConfig.heightProportionate(context, 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              " I am",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.textSize(context, 1)),
            ),
            Text(
              "Android | IOS | Flutter",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.textSize(context, 1.5)),
            ),
            Text(
              "Mobile Developer",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: kAlertRedColor,
                  fontWeight: FontWeight.w600,
                  fontSize: SizeConfig.textSize(context, 3)),
            ),
            Row(
              children: [
                IconMidWidget(
                  assetUrl: 'androidstudio.png',
                ),
                IconMidWidget(
                  assetUrl: 'xcode.png',
                ),
                IconMidWidget(
                  assetUrl: 'flutter.png',
                ),
                IconMidWidget(
                  assetUrl: 'java.png',
                ),
                IconMidWidget(
                  assetUrl: 'swift.png',
                ),
                IconMidWidget(
                  assetUrl: 'kotlin.png',
                ),
                IconMidWidget(
                  assetUrl: 'firebase.png',
                ),
              ],
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: kAlertRedColor, width: 1, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(30.0),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text('Downloading Resume...'),
                  duration: const Duration(seconds: 4),
                  action: SnackBarAction(
                    label: 'DONE',
                    onPressed: () {},
                  ),
                ));
                launch(
                    "https://drive.google.com/uc?export=download&id=1UAyI2Pdh9AxAQA-KXpJ5tEOGucFOHWYK");
              },
              child: Text(
                "Resume",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

/*

                    "https://drive.google.com/file/d/1UAyI2Pdh9AxAQA-KXpJ5tEOGucFOHWYK/uc?usp=sharing&export=download")
 */
