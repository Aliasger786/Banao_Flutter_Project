import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(CupertinoIcons.book, size:24.0, color: Colors.deepPurpleAccent),
    );
  }
}