import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/views/home/home_view_model.dart';

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
            Obx(
              () => Switch(
                value: homeViewModel.isSwitched.value,
                onChanged: (value) {
                  homeViewModel.toggleSwitch();
                },
              ),
            ),
            Obx(
              () => Slider(
                value: homeViewModel.sliderVal.value,
                onChanged: (val) {
                  homeViewModel.sliderVal.value = val;
                },
              ),
            ),
            Obx(
              () => Text(homeViewModel.sliderVal.value.toString()),
            ),
          ],
        ),
      ),
    );
  }
}
