import 'package:get/state_manager.dart';

class HomeViewModel extends GetxController {
  RxInt counter = 0.obs;

  void increment() => counter.value++;

  void decrement() => counter.value--;
}
