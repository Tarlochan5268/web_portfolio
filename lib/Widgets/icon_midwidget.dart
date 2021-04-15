import 'package:flutter/material.dart';

class IconMidWidget extends StatelessWidget {
  final String assetUrl;
  const IconMidWidget({this.assetUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Tab(
        icon: Container(
          child: Image(
            image: AssetImage(
              '$assetUrl',
            ),
            fit: BoxFit.cover,
          ),
          height: 25,
          width: 25,
        ),
      ),
    );
  }
}
