import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_searching/job.dart';

class JobDetails extends StatelessWidget {
 Job _job;
 JobDetails(this._job);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        
        children: [
          Container(height: 5,width: 50,color: Colors.black,),
          Row(
      
            children: [
              Container(
                height: 50,width: 50,
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(20) ,color: Colors.white),
                child: Image.asset(_job.logoUrl),
                
              ),
              Text(_job.company,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),

            ],
          ),
          Row(
                
            children: [
                   Row(
                    
            children: [
              Icon(Icons.bookmark_outline_outlined),
              SizedBox(width: 300,),
              Icon(Icons.more_horiz)
            ],
          ),
            ],
          ),
          Text(_job.title),
          Row(
            children: [
              Icon(Icons.location_on_outlined),
              Text(_job.location),
            ],
          ),
          Text("Requirements",style: TextStyle(
            fontSize: 20,fontWeight: FontWeight.bold
          ),),
          SizedBox(
            height: 20,
          ),
          //spread operation
          ..._job.req.map((e) => Container(
child: Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Container(
    
    margin: EdgeInsets.all(8),
    height: 5,width: 5,
 
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(20)),
  ),
  ConstrainedBox(constraints:BoxConstraints(maxWidth: 300),
  child: Text(e),
  )
]),
          )).toList(),
          SizedBox(height: 100,),


          Container(
            height: 50,
            width: 130,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius:
            
             BorderRadius.circular(20)) ,
             child: Center(child: Text("APPLY",style: TextStyle(color: Colors.white,fontSize: 20),)),
          )
        ],
        
        
      ),
      
    );
  }
}