import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'MyArticles.dart';
import 'SelectCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child:Column(
            children: <Widget>[
              Container(
                color: Color.fromRGBO(238,243,253,1),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.35,
                padding: EdgeInsets.all(22),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text("Hello, Priya!", style: TextStyle(fontSize: 25,color: Colors.black,fontFamily: 'Schyler')),
                      Text("What do you wanna learn today?", style: TextStyle(fontSize: 14,color: Colors.grey,fontFamily: 'Schyler')),
                      SizedBox(height: 35.0,),
                      Row(
                        children: [
                          SelectCard(choice: choices[0]),
                          SelectCard(choice: choices[1])
                        ],
                      ),
                      Row(
                        children: [
                          SelectCard(choice: choices[2]),
                          SelectCard(choice: choices[3])
                        ],
                      )
                    ]
                ),
              ),
              SizedBox(height: 15.0),
              Padding(padding: EdgeInsets.only(left: 9.0,right: 14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Programs for you", style: TextStyle(fontSize: 18,color: Colors.black,fontFamily: 'Schyler')),
                    Wrap(
                      children: [
                        Text("View all", style: TextStyle(fontSize: 14,color: Colors.grey,fontFamily: 'Schyler')),
                        Icon(CupertinoIcons.arrow_right, size:16.0, color: Colors.grey)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 330,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      MyArticles('assets/images/im1.jpg', 'LIFESTYLE', 'A complete guide for your new born baby','16 lessons','',''),
                      MyArticles('assets/images/im2.jpg', 'LIFESTYLE', 'A complete guide for your new born baby','16 lessons','',''),
                      MyArticles('assets/images/im1.jpg', 'LIFESTYLE', 'A complete guide for your new born baby','16 lessons','',''),
                    ],
                  )
              ),
              SizedBox(height: 15.0),
              Padding(padding: EdgeInsets.only(left: 9.0,right: 14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Events and experiences", style: TextStyle(fontSize: 18,color: Colors.black,fontFamily: 'Schyler')),
                    Wrap(
                      children: [
                        Text("View all", style: TextStyle(fontSize: 14,color: Colors.grey,fontFamily: 'Schyler')),
                        Icon(CupertinoIcons.arrow_right, size:16.0, color: Colors.grey)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 355,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      MyArticles('assets/images/im2.jpg', 'BABYCARE', 'Understanding of human behaviour','13 Feb, Sunday','','Book'),
                      MyArticles('assets/images/im2.jpg', 'BABYCARE', 'Understanding of human behaviour','13 Feb, Sunday','','Book'),
                      MyArticles('assets/images/im2.jpg', 'BABYCARE', 'Understanding of human behaviour','13 Feb, Sunday','','Book'),
                    ],
                  )
              ),
              SizedBox(height: 15.0),
              Padding(padding: EdgeInsets.only(left: 9.0,right: 14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Lessons for you", style: TextStyle(fontSize: 18,color: Colors.black,fontFamily: 'Schyler')),
                    Wrap(
                      children: [
                        Text("View all", style: TextStyle(fontSize: 14,color: Colors.grey,fontFamily: 'Schyler')),
                        Icon(CupertinoIcons.arrow_right, size:16.0, color: Colors.grey)
                      ],
                    )
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 330,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      MyArticles('assets/images/im1.jpg', 'BABYCARE', 'Understanding of human behaviour','3 min','display',''),
                      MyArticles('assets/images/im1.jpg', 'BABYCARE', 'Understanding of human behaviour','3 min','display',''),
                      MyArticles('assets/images/im1.jpg', 'BABYCARE', 'Understanding of human behaviour','3 min','display',''),
                    ],
                  )
              )
            ]
        )
    );
  }
}

const List<Choice> choices = <Choice>[
  const Choice(title: 'Programs  ', icon: Icons.book_outlined),
  const Choice(title: 'Get help  ', icon: Icons.help_outline),
  const Choice(title: 'Learn     ', icon: Icons.menu_book),
  const Choice(title: 'DD Tracker', icon: Icons.track_changes_outlined)
];