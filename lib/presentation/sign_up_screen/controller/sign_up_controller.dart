import '/core/app_export.dart';import 'package:housing/presentation/sign_up_screen/models/sign_up_model.dart';import 'package:flutter/material.dart';class SignUpController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController phoneNumberController1 = TextEditingController();

TextEditingController passwordController1 = TextEditingController();

Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); fullNameController.dispose(); phoneNumberController1.dispose(); passwordController1.dispose(); } 
 }
