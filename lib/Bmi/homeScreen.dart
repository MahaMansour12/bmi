import 'package:bmi_calcularor/Bmi/gender.dart';
import 'package:bmi_calcularor/Bmi/wightAndAge.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
             margin: EdgeInsets.symmetric(vertical: 30),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      gendar(false),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [gendar(true)],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),

              // color: Colors.yellow,
              width: double.infinity,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Heighit',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '190',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          Text('Cm',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white))
                        ],
                      ),
                      Slider(
                          max: 250,
                          min: 120,
                          value: 180,
                          inactiveColor: Colors.white,
                          activeColor: Colors.white,
                          onChanged: (value) {
                            setState(() {});
                          })
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  weightAndAdge(isAge: false, weight: 100),
                  SizedBox(
                    width: 20,
                  ),
                  weightAndAdge(
                    isAge: true,
                    age: 20,
                  ),
                ],
              ),
            ),
          ),
          Container(
              color: Colors.blue,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  )))
        ],
      ),
    );
  }
}
