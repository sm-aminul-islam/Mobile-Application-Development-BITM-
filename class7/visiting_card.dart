import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class VisitingCard extends StatefulWidget {
  const VisitingCard({super.key});

  @override
  State<VisitingCard> createState() => _VisitingCardState();
}

class _VisitingCardState extends State<VisitingCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body:Container(
        padding: EdgeInsets.all(100),
        
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2,color: Colors.white,
                
                ),
                 
              ),
             child: CircleAvatar(
              backgroundImage: AssetImage("images/rs.jpg"),

             ),
             

            ),
            Text("S.M.Aminul Islam(Robin)",
            style: GoogleFonts.pacifico(fontSize: 30,color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Android App Developer",
            style: GoogleFonts.pacifico(fontSize: 15,color: Colors.black),
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
          
              ),
            tileColor: Color(0xFFbbbdc4),
            leading: Icon(Icons.email,color: Colors.black,),
            title: Text("robinraja42@gmail.com",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
            ),
            ),
             SizedBox(
              height: 30,
            ),

             ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                  
              ),
            tileColor: Color(0xFFffcdc0),
            
            leading: Icon(Icons.call,color: Colors.black,),
            title: Text("01627844331"),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://seeklogo.com/images/W/whatsapp-logo-A5A7F17DC1-seeklogo.com.png"),
                ),
                 CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/LinkedIn_icon_circle.svg/2048px-LinkedIn_icon_circle.svg.png"),
                ),
                 CircleAvatar(
                  backgroundImage: NetworkImage("https://i.pinimg.com/originals/30/b1/50/30b150cd489202db131009ac9540cec0.png"),
                ),
                 CircleAvatar(
                  backgroundImage: NetworkImage("https://i.pinimg.com/736x/ee/af/9c/eeaf9ce3ab22ecb3904daea1b2eab04a.jpg"),
                ),
              ],
            ),
          ],
        
        ),
        
      ),
    );
  }
}
