import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HubPage extends StatelessWidget {
  const HubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(CupertinoIcons.rectangle_grid_2x2, size:24.0, color: Colors.deepPurpleAccent),
    );
  }
}