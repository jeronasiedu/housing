import '/core/app_export.dart';import 'package:housing/presentation/product_details_screen/models/product_details_model.dart';import 'package:flutter/material.dart';class ProductDetailsController extends GetxController {TextEditingController buttonController = TextEditingController();

Rx<ProductDetailsModel> productDetailsModelObj = ProductDetailsModel().obs;

RxString radioGroup = "".obs;

Rx<int> silderIndex = 0.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); buttonController.dispose(); } 
 }
