import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({ required this.choice});
  static const color = Color.fromRGBO(89, 139, 237, 1);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
            side: new BorderSide(color: color, width: 1.0),
            borderRadius: BorderRadius.circular(5.0)
        ),
        color: Color.fromRGBO(238,243,253,1),
        child: Container(

          width: MediaQuery.of(context).size.width/2.4,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(child:Icon(choice.icon, size:24.0, color: color),),
              Center(child:Text(choice.title, style: TextStyle(color: color),))
            ],
          ) ,
        )
    );
  }
}

class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}