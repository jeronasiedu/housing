import '/core/app_export.dart';import 'package:housing/presentation/add_new_property_address_screen/models/add_new_property_address_model.dart';import 'package:flutter/material.dart';class AddNewPropertyAddressController extends GetxController {TextEditingController streetaddressController1 = TextEditingController();

TextEditingController unitnumberController = TextEditingController();

TextEditingController citynameController = TextEditingController();

TextEditingController zipcodeController = TextEditingController();

Rx<AddNewPropertyAddressModel> addNewPropertyAddressModelObj = AddNewPropertyAddressModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); streetaddressController1.dispose(); unitnumberController.dispose(); citynameController.dispose(); zipcodeController.dispose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; addNewPropertyAddressModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); addNewPropertyAddressModelObj.value.dropdownItemList.refresh(); } 
 }
