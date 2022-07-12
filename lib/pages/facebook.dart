import 'package:flutter/material.dart';

class FaceBook extends StatelessWidget {
  const FaceBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20.0,
        backgroundColor: Colors.white38,
        leading: const Icon(Icons.abc),
        title: const Text(
          'Facebook',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.blue,
          ),
        ),
        centerTitle: true,
        actions: [
          Row(
            children: const [
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
            ],
          ),
        ],
      ),
    );
  }
}
