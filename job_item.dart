import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_searching/job.dart';

class JobItem extends StatelessWidget {
Job _job;
JobItem(this._job);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: Image.asset(_job.logoUrl),
              ),
              Text(_job.company,style: TextStyle(fontSize: 20),),
              Icon(Icons.bookmark_outline_outlined)
            ],
          ),
          Text(_job.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
          Row(
            children: [
          
              Icon(Icons.location_on_outlined),
                  Text(_job.location)
            ],
          )
        ],
      ),
    );
  }
}