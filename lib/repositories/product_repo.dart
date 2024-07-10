import 'package:get/get.dart';
import 'package:getx_learning/services/product_service.dart';

class ProductRepo extends GetxController {
  final RxList _products = [].obs;
  RxList get products => _products;

  final ProductService productService = ProductService();

  @override
  void onInit() {
    config();
    super.onInit();
  }

  void config() async {
    await getAllProducts();
  }

  Future<void> getAllProducts() async {
    List<Map<String, dynamic>> productsList =
        await productService.getAllProductsService();

    _products.value = productsList;
  }
}
