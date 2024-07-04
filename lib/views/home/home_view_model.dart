import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  final RxBool _isSwitched = false.obs;
  RxBool get isSwitched => _isSwitched;

  RxDouble _sliderVal = 0.0.obs;
  RxDouble get sliderVal => _sliderVal;

  void toggleSwitch() => _isSwitched.toggle();

  void toggleSlider(RxDouble value) {
    _sliderVal = value;
  }
}
