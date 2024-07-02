import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  final RxBool _isSwitched = false.obs;
  RxBool get isSwitched => _isSwitched;

  void toggleSwitch() => _isSwitched.toggle();
}
