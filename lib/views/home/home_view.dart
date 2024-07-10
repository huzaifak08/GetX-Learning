import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/repositories/product_repo.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Build');

    final ProductRepo productRepo = Get.put(ProductRepo());

    return Scaffold(
      appBar: AppBar(
        title: const Text('API Calls'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: productRepo.products.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(
              productRepo.products[index]['title'],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          debugPrint(productRepo.products.toString());
        },
      ),
    );
  }
}
