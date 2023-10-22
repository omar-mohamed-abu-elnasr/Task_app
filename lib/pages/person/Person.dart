import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  const Person({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: 200,
          alignment: Alignment.center,
          child: Text(" PERSON ",style: TextStyle(color: Colors.black,fontSize: 30),textAlign:TextAlign.end )),
    );
  }
}
