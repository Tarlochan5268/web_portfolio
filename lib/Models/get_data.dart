import 'package:flutter/material.dart';
import 'package:web_portfolio/Models/project.dart';
import 'package:web_portfolio/Widgets/project_card.dart';
import 'package:web_portfolio/utils/constants.dart';

const String MONEY_EXPENSES_APP = "moneyExpenseApp/";
const String IN_SHARE_APP = "inshareapp/";
const String ZOTES = "zotes/";

final List<Project> projectsList = [
  Project(
      projectURL: "https://github.com/Tarlochan5268/INShareApp",
      projectDescription:
          "Made using Kotlin for Android \nSee/Edit Device Profile \nSend Share Files/Apps \nView History of Sent/Receive Files \nView/Share Latest News \nChoose different News Categories",
      projectImages: inShareAppImageList,
      projectName: "InShare App"),
  Project(
      projectURL: "https://github.com/Tarlochan5268/MoneyExpensesApp",
      projectDescription:
          "Made using Flutter SDK \n See weekly Expenses \n Add New Transactions \n Delete Transactions \n Show Custom Chart",
      projectImages: moneyExpenseAppImageList,
      projectName: "Money Expenses App"),
  Project(
      projectURL: "https://github.com/Tarlochan5268/Zotes",
      projectDescription:
          "Made using Swift XCode IOS \n Create/Delete Notes \n See All Notes in Dashboard \n Add Attachments to Notes \n Add Map Location To Notes \n 3D Touch to Color Note",
      projectImages: zotesAppImageList,
      projectName: "Zotes NoteTaking App")
];

final List<Widget> moneyExpenseAppImageList = [
  const CustomImage(imageURL: MONEY_EXPENSES_APP + "moneyExpenseApp1.png"),
  const CustomImage(imageURL: MONEY_EXPENSES_APP + "moneyExpenseApp2.png"),
  const CustomImage(imageURL: MONEY_EXPENSES_APP + "moneyExpenseApp3.png"),
];

final List<Widget> inShareAppImageList = [
  const CustomImage(imageURL: IN_SHARE_APP + "ss_dashboard.jpg"),
  const CustomImage(imageURL: IN_SHARE_APP + "ss_edit_profile.jpg"),
  const CustomImage(imageURL: IN_SHARE_APP + "ss_profile.jpg"),
  const CustomImage(imageURL: IN_SHARE_APP + "ss_history.jpg"),
  const CustomImage(imageURL: IN_SHARE_APP + "ss_intro.jpg"),
  const CustomImage(imageURL: IN_SHARE_APP + "ss_news.jpg"),
  const CustomImage(imageURL: IN_SHARE_APP + "ss_news_category.jpg"),
  const CustomImage(imageURL: IN_SHARE_APP + "ss_news_open.jpg"),
  const CustomImage(imageURL: IN_SHARE_APP + "ss_news_share.jpg"),
  const CustomImage(imageURL: IN_SHARE_APP + "ss_settings.jpg"),
  const CustomImage(imageURL: IN_SHARE_APP + "ss_transfer.jpg"),
  const CustomImage(imageURL: IN_SHARE_APP + "ss_transfer_apps.jpg"),
  const CustomImage(imageURL: IN_SHARE_APP + "ss_transfer_media.jpg"),
];

final List<Widget> zotesAppImageList = [
  const CustomImage(imageURL: ZOTES + "ss_dashboard.png"),
  const CustomImage(imageURL: ZOTES + "ss_3dtouch.png"),
  const CustomImage(imageURL: ZOTES + "ss_create.png"),
  const CustomImage(imageURL: ZOTES + "ss_attachment.png"),
  const CustomImage(imageURL: ZOTES + "ss_categories.png"),
  const CustomImage(imageURL: ZOTES + "ss_filters.png"),
  const CustomImage(imageURL: ZOTES + "ss_map.png"),
  const CustomImage(imageURL: ZOTES + "ss_settings.png"),
  const CustomImage(imageURL: ZOTES + "ss_view.png"),
  const CustomImage(imageURL: ZOTES + "ss_about.png"),
];

final List<Widget> projectCardList = [
  ProjectCard(
    project: projectsList[0],
  ),
  ProjectCard(
    project: projectsList[1],
  ),
  ProjectCard(
    project: projectsList[2],
  ),
];

class CustomImage extends StatelessWidget {
  final String imageURL;

  const CustomImage({Key key, @required this.imageURL}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(imgPath + '$imageURL'),
      height: 100,
      width: 200,
    );
  }
}

//image: AssetImage('/images/$imageURL'),
