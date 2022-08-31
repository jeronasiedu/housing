import '../controller/my_home_controller.dart';
import 'package:get/get.dart';

class MyHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyHomeController());
  }
}
