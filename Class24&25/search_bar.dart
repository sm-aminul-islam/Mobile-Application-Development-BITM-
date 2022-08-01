import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: EdgeInsets.all(10),
      
        height: 340,
        width: 340,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image:AssetImage("assets/images/search_bg.png"),fit: BoxFit.cover),
        ),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Fast Search",style: TextStyle(fontSize: 20,
            color: Colors.white,
            height: 3
            ),
            ),
            Text("You can search quickly for\nthe job you want",style: TextStyle(height: 3),),
            SizedBox(height: 20,),
            Container(
            
              height: 40,
              width: 300,
              decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              
              ),
child: Row(
  children: [
    Icon(Icons.search),
    SizedBox(width: 30,),
    Text("Search"),
  ],
),

            )
          ],
        ),
      ),
    );
  }
}