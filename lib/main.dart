import 'package:flutter/material.dart';
import 'package:web_portfolio/Widgets/appbar_custom.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'UI/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appBarCustom,
        body: Homepage(),
      ),
    );
  }
}
