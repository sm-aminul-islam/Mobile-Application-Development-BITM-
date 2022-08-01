import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_searching/job.dart';
import 'package:job_searching/job_details.dart';
import 'package:job_searching/job_item.dart';

class Joblist extends StatelessWidget {
final jobList=Job.genaratedJobList();


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: jobList.length,
      itemBuilder: (context, index){
        return GestureDetector(
          onTap: (){
            showModalBottomSheet(context: context, 
            isScrollControlled: true,
            builder:(context)=>JobDetails(jobList[index]) );
          },
          child: JobItem(jobList[index]));
      },
      separatorBuilder:(_,index)=>SizedBox(width: 5,) ,
      ),
    );
  }
}