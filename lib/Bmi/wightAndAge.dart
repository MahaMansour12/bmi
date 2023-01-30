import 'package:flutter/material.dart';

class weightAndAdge extends StatelessWidget {
  bool isAge;
  int? weight;
  int? age;
  weightAndAdge({required this.isAge, this.weight, this.age});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 140,
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
      ),
      child: Column(
        children: [
          Text(
            isAge ? "age" : "Weight",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(weight.toString(),style: TextStyle(color: Colors.white,fontSize: 24),),
          Row(
            children:  [
              CircleAvatar(child:
             IconButton(onPressed:(){

             }, icon:Icon(Icons.arrow_back_ios)),
              ),
              SizedBox(width: 16,),
              CircleAvatar(
                child: IconButton(onPressed:(){

                }, icon:Icon(Icons.arrow_forward_ios)),
              )
            ],
          )
        ],
      ),
    );
  }
}
