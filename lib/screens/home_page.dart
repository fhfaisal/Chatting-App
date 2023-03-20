import 'package:chatting_app/screens/widget_settings/widget_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(CupertinoIcons.home),
          title: Text(
            "SnapTalk",
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add_comment_rounded),
          ),
        ),
      ),
    );
  }
}
