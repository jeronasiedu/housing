import '/core/app_export.dart';import 'package:housing/presentation/add_new_property_decsription_screen/models/add_new_property_decsription_model.dart';import 'package:flutter/material.dart';class AddNewPropertyDecsriptionController extends GetxController {TextEditingController streetaddressController2 = TextEditingController();

Rx<AddNewPropertyDecsriptionModel> addNewPropertyDecsriptionModelObj = AddNewPropertyDecsriptionModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); streetaddressController2.dispose(); } 
 }
