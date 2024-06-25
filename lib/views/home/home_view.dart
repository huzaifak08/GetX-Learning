import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/views/second/second_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Build');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter APP'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '0',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push
          // Get.to(() => const SecondScreen());

          // Navigator.pushReplacement
          // Get.off(() => const SecondScreen());

          // Navigator.pushAndRemoveUntil
          Get.offAll(() => const SecondScreen());
        },
        child: const Icon(Icons.next_plan),
      ),
    );
  }
}
