import '/core/app_export.dart';
import 'package:housing/presentation/home_listing_satelite_screen/models/home_listing_satelite_model.dart';
import 'package:flutter/material.dart';

class HomeListingSateliteController extends GetxController {
  TextEditingController searchController2 = TextEditingController();

  Rx<HomeListingSateliteModel> homeListingSateliteModelObj =
      HomeListingSateliteModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController2.dispose();
  }
}
