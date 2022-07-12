import 'package:flower_app/shared/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        centerTitle: true,
        title: const Text('About'),
      ),
      body: const Center(
        child:  Text("I'm Mobile Application Developer, for inquires contact me via email : azayn1143@gmail.com",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
            color: appbarGreen,
          ),),
      ),
    );
  }
}
