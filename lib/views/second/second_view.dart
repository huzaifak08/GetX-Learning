import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                // Navigator.pop:
                Get.back();
              },
              child: const Text('Back Screen'))
        ],
      ),
    );
  }
}
