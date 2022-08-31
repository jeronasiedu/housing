import '/core/app_export.dart';import 'package:housing/presentation/select_virtual_app_screen/models/select_virtual_app_model.dart';import 'package:flutter/material.dart';class SelectVirtualAppController extends GetxController {Rx<SelectVirtualAppModel> selectVirtualAppModelObj = SelectVirtualAppModel().obs;

TextEditingController streetaddressController4 = TextEditingController();

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); streetaddressController4.dispose(); } 
 }
