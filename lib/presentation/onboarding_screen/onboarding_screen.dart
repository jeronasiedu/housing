import 'controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:housing/core/app_export.dart';
import 'package:housing/widgets/custom_button.dart';

class OnboardingScreen extends GetWidget<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.bluegray50,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: getVerticalSize(
                        768.00,
                      ),
                      width: size.width,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: CommonImageView(
                              imagePath: ImageConstant.imgImg768X375,
                              height: getVerticalSize(
                                768.00,
                              ),
                              width: getHorizontalSize(
                                375.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              margin: getMargin(
                                left: 24,
                                top: 58,
                                right: 24,
                                bottom: 58,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 18,
                                      right: 18,
                                    ),
                                    child: Text(
                                      "msg_enjoy_the_beaut".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtManropeExtraBold24Bluegray50
                                          .copyWith(),
                                    ),
                                  ),
                                  Container(
                                    width: getHorizontalSize(
                                      317.00,
                                    ),
                                    margin: getMargin(
                                      left: 5,
                                      top: 21,
                                      right: 4,
                                    ),
                                    child: Text(
                                      "msg_lorem_ipsum_is".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtManropeMedium14Gray300
                                          .copyWith(),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 18,
                                      top: 32,
                                      right: 18,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgSliderindicato,
                                      height: getVerticalSize(
                                        6.00,
                                      ),
                                      width: getHorizontalSize(
                                        42.00,
                                      ),
                                    ),
                                  ),
                                  CustomButton(
                                    width: 327,
                                    text: "lbl_get_started".tr,
                                    margin: getMargin(
                                      top: 40,
                                    ),
                                    shape: ButtonShape.RoundedBorder10,
                                    padding: ButtonPadding.PaddingAll20,
                                    fontStyle:
                                        ButtonFontStyle.ManropeBold16Bluegray50,
                                    alignment: Alignment.centerLeft,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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
