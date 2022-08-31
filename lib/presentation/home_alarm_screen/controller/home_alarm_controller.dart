import '/core/app_export.dart';import 'package:housing/presentation/home_alarm_screen/models/home_alarm_model.dart';import 'package:flutter/material.dart';class HomeAlarmController extends GetxController {TextEditingController serchController = TextEditingController();

TextEditingController phoneController = TextEditingController();

Rx<HomeAlarmModel> homeAlarmModelObj = HomeAlarmModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); serchController.dispose(); phoneController.dispose(); } 
onSelected(dynamic value) { selectedDropDownValue = value as SelectionPopupModel; homeAlarmModelObj.value.dropdownItemList.forEach((element) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}}); homeAlarmModelObj.value.dropdownItemList.refresh(); } 
 }
