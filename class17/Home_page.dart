import 'package:drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldkey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      key: scaffoldkey,
      drawer: DrawerDemo(),
      
      body: Center(
        child: InkWell(
          onTap: (){
            scaffoldkey.currentState!.openDrawer();
          },
          child: Container(
            padding: EdgeInsets.all(25),
            color: Colors.teal,
            child: Text("CLICK ME"),
          ),
        ),
      ),

       
    );
  }
}
