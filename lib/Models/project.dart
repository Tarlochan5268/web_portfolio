import 'package:flutter/material.dart';

class Project {
  final String projectName;
  final String projectURL;
  final String projectDescription;
  final List<Widget> projectImages;
  Project(
      {@required this.projectURL,
      @required this.projectDescription,
      @required this.projectImages,
      @required this.projectName});
}
