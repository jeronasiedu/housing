import '/core/app_export.dart';import 'package:housing/presentation/home_search_screen/models/home_search_model.dart';import 'package:flutter/material.dart';class HomeSearchController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<HomeSearchModel> homeSearchModelObj = HomeSearchModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
