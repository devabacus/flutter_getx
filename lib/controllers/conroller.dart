import 'package:get/get_state_manager/get_state_manager.dart';

class Controller extends GetxController {
  int count = 0;
  void increment() {
    count++;
    // use update method to update all count variables
    update();
  }
}