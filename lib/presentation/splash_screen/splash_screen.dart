import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:housing/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.teal900,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 137,
                      top: 347,
                      right: 137,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgHome65X64,
                      height: getVerticalSize(
                        65.00,
                      ),
                      width: getHorizontalSize(
                        64.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 137,
                      top: 16,
                      right: 137,
                      bottom: 20,
                    ),
                    child: Text(
                      "lbl_vertex".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtManropeBold32.copyWith(
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
