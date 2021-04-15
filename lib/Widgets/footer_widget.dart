import 'dart:js';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/size_config.dart';

import 'dialog_box_custom_address.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return Container(
      color: kThemeDarkBlueColor,
      height: SizeConfig.heightProportionate(buildContext, 10),
      width: SizeConfig.displayWidth(buildContext),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.call_rounded),
                    onPressed: () {
                      launch('tel:+14164362548');
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.home_rounded),
                  onPressed: () {
                    showDialog(
                        context: buildContext,
                        builder: (BuildContext context) {
                          return DialogBoxCustomAddress();
                        });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.email_rounded),
                  onPressed: () {
                    final Uri _emailLaunchUri = Uri(
                        scheme: 'mailto',
                        path: 'brotherstarlochan5268@gmail.com',
                        queryParameters: {'subject': 'Enquiry'});
                    launch(_emailLaunchUri.toString());
                  },
                ),
              ),
            ],
          ),
          Text(
            'Copyright © 2021, All Rights Reserved.',
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 9.0,
                color: Colors.white),
          ),
          Text(
            'Developed by Das TarlochanPreet Singh',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 10.0,
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
