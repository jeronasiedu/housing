import '/core/app_export.dart';import 'package:housing/presentation/recently_views_screen/models/recently_views_model.dart';import 'package:flutter/material.dart';class RecentlyViewsController extends GetxController {TextEditingController sortController = TextEditingController();

Rx<RecentlyViewsModel> recentlyViewsModelObj = RecentlyViewsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); sortController.dispose(); } 
 }
