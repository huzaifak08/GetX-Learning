import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Build');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter APP'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (Platform.isAndroid) ...{
              const Text(
                '0',
                style: TextStyle(fontSize: 30),
              ),
            } else ...{
              const Text(
                '1',
                style: TextStyle(fontSize: 30),
              ),
            }
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String? value = GetUtils.camelCase('value box');
          String? value1 = GetUtils.capitalize('value');
          String? value2 = GetUtils.capitalizeFirst('value');
          bool value3 = GetUtils.isEmail('huzaifa@gma');

          print("$value + $value1 + $value2 + $value3");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
