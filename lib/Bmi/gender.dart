import 'package:flutter/material.dart';

class gendar extends StatelessWidget {

bool isFemale;

gendar(this.isFemale);
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        padding: EdgeInsets.all(30),
        width: 150,
        height: 150,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),

        color: Colors.blue)
        ,

          child: Column(children: [
          InkWell(child: Icon(isFemale?Icons.female:Icons.male,size: 50,color: Colors.white,)),

          Text(isFemale?"Female":"Male",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),

          ],),

      ),
    );
  }
}
