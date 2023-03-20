import 'package:chatting_app/screens/home_page.dart';
import 'package:chatting_app/screens/widget_settings/widget_settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            elevation: 2,
            backgroundColor: Colors.lightBlue,
            iconTheme: IconThemeData(color: Colors.white),
            centerTitle: true,
            titleTextStyle: myFontStyle(20, FontWeight.bold, Colors.white),
          )),
      home: HomePage(),
    );
  }
}
