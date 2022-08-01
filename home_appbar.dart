import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        

        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              Column(
                
                children: [
                  Text("Welcome Home"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Annie Brayant",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 40),
              
                child:Stack(
                  children: [
                    Row(children: [
                         
                  Icon(Icons.notifications_none_outlined,size: 50,
                 
                  ),
                  Image.asset("assets/images/avatar.png",
                  height: 50,
                  )
                ],),
                Positioned(
              
                  right: 50,
                  child: Container(
                  
              
                  padding: EdgeInsets.all(5.0),
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.red
                  ),
                ))
                  ],
                )
              ),
             ]
        ),
      ),
    );
  }
}