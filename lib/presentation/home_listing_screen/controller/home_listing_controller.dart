import '/core/app_export.dart';
import 'package:housing/presentation/home_listing_screen/models/home_listing_model.dart';
import 'package:flutter/material.dart';

class HomeListingController extends GetxController {
  TextEditingController searchController1 = TextEditingController();

  Rx<HomeListingModel> homeListingModelObj = HomeListingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController1.dispose();
  }
}
