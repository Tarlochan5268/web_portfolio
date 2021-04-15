import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/constants.dart';

class CustomFormFields extends StatelessWidget {
  final String hintText;
  final String errorEmptyText;
  final int maxLines;

  const CustomFormFields({
    Key key,
    @required this.controller,
    @required this.hintText,
    @required this.errorEmptyText,
    this.maxLines = 1,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          decorationColor: Colors.white, //Font color change
          backgroundColor: kThemeDarkBlueColor,
        ),
        controller: controller,
        keyboardType: TextInputType.text,
        maxLines: maxLines,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
          fillColor: kThemeBlackColor,
          hintStyle: TextStyle(color: Colors.grey),
          hintText: hintText,
          filled: true,
          border: InputBorder.none,
        ),
        // The validator receives the text that the user has entered.
        validator: (value) {
          if (value.isEmpty) {
            return '$errorEmptyText';
          }
          return null;
        },
      ),
    );
  }
}
