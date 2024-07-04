import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  final RxString _errorMsg = ''.obs;
  RxString get errorMsg => _errorMsg;

  RxString errorMessage() {
    _errorMsg.value = "Invalid email format";

    return _errorMsg;
  }
}
