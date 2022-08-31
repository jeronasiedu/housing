import '/core/app_export.dart';import 'package:housing/presentation/add_new_property_contact_screen/models/add_new_property_contact_model.dart';import 'package:flutter/material.dart';class AddNewPropertyContactController extends GetxController {TextEditingController frame34503Controller = TextEditingController();

TextEditingController streetaddressController3 = TextEditingController();

Rx<AddNewPropertyContactModel> addNewPropertyContactModelObj = AddNewPropertyContactModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); frame34503Controller.dispose(); streetaddressController3.dispose(); } 
 }
