import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TagList extends StatefulWidget {
  const TagList({super.key});

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final _taglist=[
    'All',
    '⚡Popular',
    '⭐Featured',
    'Service',
    'Others'
  ];
  var selected=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,

      child: 
      ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _taglist.length,
        itemBuilder: ((context, index) {
          return GestureDetector(
            onTap: (){
              setState(() {
              selected=index;

              });
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(3),
              margin: EdgeInsets.all(10),
          decoration: BoxDecoration(color:selected==index?Colors.orange:Colors.white,borderRadius: BorderRadius.circular(5),border: Border.all(color: selected==index?Colors.teal.withOpacity(.2):Colors.blue)),
              child: Text(_taglist[index],),
            ),
          );

        }

        
        ),
        separatorBuilder: (_,index)=>SizedBox(width: 15,),
      ) ,

    );
  }
}