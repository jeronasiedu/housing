import '/core/app_export.dart';import 'package:housing/presentation/my_home_screen/models/my_home_model.dart';class MyHomeController extends GetxController {Rx<MyHomeModel> myHomeModelObj = MyHomeModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
