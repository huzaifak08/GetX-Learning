import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Build');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Slider Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              validator: (value) {
                if (GetUtils.isUsername(value!)) {
                  return null;
                } else {
                  return "Enter Valid Username";
                }
              },
            ),
            const SizedBox(height: 12),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              validator: (value) {
                if (GetUtils.isEmail(value!)) {
                  return null;
                } else {
                  return "Enter Valid Email";
                }
              },
            ),
            const SizedBox(height: 12),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              validator: (value) {
                if (GetUtils.isPhoneNumber(value!)) {
                  return null;
                } else {
                  return "Enter Valid Phone Number";
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
