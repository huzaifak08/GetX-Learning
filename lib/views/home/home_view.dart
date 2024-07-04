import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/views/home/home_view_model.dart';
import 'package:getx_learning/views/second/second_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeViewModel homeViewModel = Get.put(HomeViewModel());

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
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onChanged: (value) {
                GetUtils.isEmail(value);
              },
              validator: (value) => homeViewModel.errorMsg.value,
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ],
        ),
      ),
    );
  }
}
