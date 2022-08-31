import '/core/app_export.dart';import 'package:housing/presentation/add_new_property_home_facts_screen/models/add_new_property_home_facts_model.dart';import 'package:flutter/material.dart';class AddNewPropertyHomeFactsController extends GetxController {TextEditingController priceOneController = TextEditingController();

Rx<AddNewPropertyHomeFactsModel> addNewPropertyHomeFactsModelObj = AddNewPropertyHomeFactsModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); priceOneController.dispose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; addNewPropertyHomeFactsModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); addNewPropertyHomeFactsModelObj.value.dropdownItemList.refresh(); } 
 }
