import '/core/app_export.dart';import 'package:housing/presentation/favorite_screen/models/favorite_model.dart';import 'package:flutter/material.dart';class FavoriteController extends GetxController {TextEditingController sortController1 = TextEditingController();

Rx<FavoriteModel> favoriteModelObj = FavoriteModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); sortController1.dispose(); } 
 }
