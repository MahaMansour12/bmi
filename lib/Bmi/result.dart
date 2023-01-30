import 'package:flutter/material.dart';

class resultBMI extends StatelessWidget {
  double result;
  int weight;
  double height;

  resultBMI({required this.height, required this.weight, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: Center(
        child: Container(

height: 100,
          color: Colors.grey[400],
          child: Center(
            child: Text(

              'The Ideal Weight ${result.round()} Kg',
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white,),
            ),
          ),
        ),
      ),
    );
  }
}
