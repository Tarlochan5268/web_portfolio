import 'package:flutter/material.dart';

import 'package:web_portfolio/utils/constants.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            border: new Border.all(
              color: Colors.red,
              width: 1.0,
            ),
          ),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            //backgroundImage: AssetImage(imgPath + 'profile.png'),
            backgroundImage: NetworkImage(
              "https://drive.google.com/uc?export=view&id=1a3zTT8nBhBWxgaHL6XfDWlakyH1K-apU",
            ),
            radius: 100,
          ),
        );
      }),
    );
  }
}
