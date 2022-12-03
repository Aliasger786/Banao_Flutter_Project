import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

Container MyArticles(String imageVal, String heading, String subHeading, String lessons,String icon,String comp){
  const color=Color.fromRGBO(89, 139, 237, 1);

  return Container(
    width: 290.0,
    child: Card(
      child: Column(
        children: [
          Image.asset(
              imageVal
          ),
          SizedBox(height: 15.0),
          ListTile(
            title: Text(heading, style: TextStyle(color: color,fontWeight: FontWeight.bold,fontFamily: 'Schyler'),),
            subtitle: Container(margin: EdgeInsets.only(top: 10),
                child:Text(subHeading,style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.bold,fontFamily: 'Schyler'),)),
          ),
          SizedBox(height: 10.0),
          Padding(padding: EdgeInsets.only(left: 16.0,right: 14.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(lessons,style: TextStyle(color: Colors.grey,fontSize: 14,fontFamily: 'Schyler'),),
                  if(icon != '')
                    Icon(CupertinoIcons.lock, size:24.0, color: Colors.grey),
                  if(comp != '')
                    ElevatedButton(onPressed: () {}, child: Text(comp,style:
                    TextStyle(fontSize: 14, color: Colors.deepPurpleAccent,fontFamily: 'Schyler')),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(5)
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24.0),
                                  side: BorderSide(color: Colors.deepPurpleAccent)
                              )
                          )
                      ),
                    )
                ],
              )
          ),

        ],
      ),
    ),
  );
}