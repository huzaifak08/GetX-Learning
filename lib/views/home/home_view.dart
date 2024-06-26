import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          // Snackbar:
          Get.snackbar('Checking', "This is get Snackbar");

          // Dialogue
          Get.defaultDialog(title: 'Alert', middleText: "Are you sure?");

          // Bottom Sheet:
          Get.bottomSheet(BottomSheet(
            onClosing: () {},
            builder: (context) => const Column(
              children: [
                Text('Text 1'),
                Text('Text 2'),
                Text('Text 3'),
              ],
            ),
          ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
