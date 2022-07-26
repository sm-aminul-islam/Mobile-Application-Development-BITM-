import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel/model/travel.dart';

class MostPopular extends StatefulWidget {

  final Popular_list=Travel.popular();

  @override
  State<MostPopular> createState() => _MostPopularState();
}

class _MostPopularState extends State<MostPopular> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount:widget.Popular_list.length,
        
        itemBuilder: (BuildContext context, index){
          var popular=widget.Popular_list[index];
          return Stack(
            children: [
              Padding(
    padding: const EdgeInsets.only(right: 10),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(popular.img,
      fit: BoxFit.fill,
      width: MediaQuery.of(context).size.width,
      
      ),
    ),
  ),
  Positioned(
bottom: 150,
left: 20,
    child: Text(popular.name,style: TextStyle(fontSize: 30,color: Colors.white),),
  ),
   Positioned(
    bottom: 120,
    left: 20,

    child: Text(popular.address,style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
  ),
            ],
            
         );
        }  ),
    );
  }
}