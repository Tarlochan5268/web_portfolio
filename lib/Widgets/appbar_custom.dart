import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/Widgets/dialogbox_contact_me.dart';
import 'package:web_portfolio/Widgets/red_border_button.dart';
import 'package:web_portfolio/utils/constants.dart';

final appBarCustom = AppBar(
  leading: SizedBox(
    width: 100,
  ),
  backgroundColor: kThemeDarkBlueColor,
  centerTitle: true,
  title: Text(
    'Das Tarlochan Preet Singh',
    style: TextStyle(fontWeight: FontWeight.bold),
  ),
  actions: [
    TextButton(
      onPressed: () {
        launch(
            "https://www.notion.so/Das-Tarlochan-Preet-Singh-fb90de5543e34571a172224ac244063c");
      },
      child: Text(
        'Notion',
        style: TextStyle(color: Colors.white),
      ),
    ),
    SizedBox(
      width: 10,
    ),
    TextButton(
      onPressed: () {
        launch("https://github.com/Tarlochan5268");
      },
      child: Text(
        'Github',
        style: TextStyle(color: Colors.white),
      ),
    ),
    SizedBox(
      width: 10,
    ),
    TextButton(
      onPressed: () {
        launch("https://www.linkedin.com/in/das-tarlochanpreet-singh/");
      },
      child: Text(
        'LinkedIn',
        style: TextStyle(color: Colors.white),
      ),
    ),
    SizedBox(
      width: 10,
    ),
    RedBorderButton(
      text: "Contact",
      onPressedFunc: () {
        showDialog(
            context: navigatorKey.currentContext,
            builder: (BuildContext context) {
              return DialogBoxContactMe();
            });
      },
    ),
    SizedBox(
      width: 100,
    )
  ],
);
