import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/constants.dart';

class RedBorderButton extends StatelessWidget {
  final Function onPressedFunc;
  final String text;
  final bool marginTrue;
  final EdgeInsets padding;
  const RedBorderButton(
      {Key key,
      this.onPressedFunc,
      @required this.text,
      this.marginTrue = true,
      this.padding = const EdgeInsets.all(0)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: (marginTrue) ? EdgeInsets.all(10) : EdgeInsets.all(0),
      child: FlatButton(
        padding: padding,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: kAlertRedColor, width: 1, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(30.0),
        ),
        onPressed: onPressedFunc,
        child: Text(
          "$text",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
