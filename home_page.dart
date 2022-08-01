import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_searching/home_appbar.dart';
import 'package:job_searching/job_details.dart';
import 'package:job_searching/job_item.dart';
import 'package:job_searching/job_list.dart';
import 'package:job_searching/search_bar.dart';
import 'package:job_searching/tag_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container()),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.grey.withOpacity(0.1),
                  ))
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                HomeAppbar(),
                SearchBar(),
                TagList(),
          
              Joblist(),
             CircleAvatar(
              backgroundColor:Colors.amber,
              radius: 20,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: Icon(Icons.add),
                color: Colors.white,
                onPressed: (){
                 // Navigator.push(context,MaterialPageRoute(builder: (context)=>Joblist()));
                },

              ),
             )
              ],
            ),
          ),
        ],
      ),
    );
  }
}