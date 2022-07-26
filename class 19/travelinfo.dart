import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../model/travel.dart';

class TravelInfo extends StatefulWidget {

final travel_list=Travel.travelblog();
  @override
  State<TravelInfo> createState() => _TravelInfoState();
}

class _TravelInfoState extends State<TravelInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: widget.travel_list.length,
        itemBuilder: (context, index) {
          var travel=widget.travel_list[index];
          return Stack(
children: [
  Padding(
    padding: const EdgeInsets.only(right: 10),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(travel.img,
      fit: BoxFit.fill,
      width: MediaQuery.of(context).size.width,
      
      ),
    ),
  ),
  Positioned(
bottom: 150,
left: 20,
    child: Text(travel.name,style: TextStyle(fontSize: 30,color: Colors.white),),
  ),
   Positioned(
    bottom: 120,
    left: 20,

    child: Text(travel.address,style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
  ),
  Positioned(
    bottom: 0,
    right: 20,
    child:Container(
      
      height: 50,
      width: 50,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
      color: Colors.orange,
      
      ),
      child:Icon(Icons.arrow_forward) ,
    ) )
],

          );
          
        }),
    );
  }
}