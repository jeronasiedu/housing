import 'controller/home_listing_draw_controller.dart';
import 'package:flutter/material.dart';
import 'package:housing/core/app_export.dart';
import 'package:housing/widgets/custom_button.dart';
import 'package:housing/widgets/custom_icon_button.dart';
import 'package:housing/widgets/custom_text_form_field.dart';

class HomeListingDrawScreen extends GetWidget<HomeListingDrawController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: size.width,
                child: SingleChildScrollView(
                  child: Container(
                    height: getVerticalSize(
                      724.00,
                    ),
                    width: size.width,
                    margin: getMargin(
                      bottom: 44,
                    ),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: getMargin(
                              top: 10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: size.width,
                                    margin: getMargin(
                                      left: 16,
                                      right: 16,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CustomTextFormField(
                                          width: 271,
                                          focusNode: FocusNode(),
                                          controller:
                                              controller.searchController3,
                                          hintText: "msg_360_stillwater".tr,
                                          variant: TextFormFieldVariant
                                              .OutlineBluegray40014,
                                          shape:
                                              TextFormFieldShape.CircleBorder24,
                                          fontStyle: TextFormFieldFontStyle
                                              .ManropeRegular14,
                                          textInputAction: TextInputAction.done,
                                          prefix: Container(
                                            margin: getMargin(
                                              left: 19,
                                              top: 14,
                                              right: 11,
                                              bottom: 14,
                                            ),
                                            child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgEye20X17,
                                            ),
                                          ),
                                          prefixConstraints: BoxConstraints(
                                            minWidth: getSize(
                                              20.00,
                                            ),
                                            minHeight: getSize(
                                              20.00,
                                            ),
                                          ),
                                          suffix: Container(
                                            margin: getMargin(
                                              left: 30,
                                              top: 17,
                                              right: 21,
                                              bottom: 17,
                                            ),
                                            child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgClose12X12,
                                            ),
                                          ),
                                          suffixConstraints: BoxConstraints(
                                            minWidth: getHorizontalSize(
                                              12.00,
                                            ),
                                            minHeight: getVerticalSize(
                                              12.00,
                                            ),
                                          ),
                                        ),
                                        CustomIconButton(
                                          height: 48,
                                          width: 48,
                                          variant: IconButtonVariant
                                              .OutlineBluegray40014,
                                          shape: IconButtonShape.CircleBorder24,
                                          padding:
                                              IconButtonPadding.PaddingAll14,
                                          child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgVectorGray900,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin: getMargin(
                                      left: 16,
                                      top: 30,
                                      right: 16,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: getVerticalSize(
                                            444.00,
                                          ),
                                          width: getHorizontalSize(
                                            330.00,
                                          ),
                                          margin: getMargin(
                                            right: 5,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                  margin: getMargin(
                                                    top: 10,
                                                    right: 10,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        width: double.infinity,
                                                        decoration: AppDecoration
                                                            .outlineGray30012
                                                            .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                left: 19,
                                                                top: 9,
                                                                right: 19,
                                                              ),
                                                              child:
                                                                  CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGlobe,
                                                                height: getSize(
                                                                  16.00,
                                                                ),
                                                                width: getSize(
                                                                  16.00,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                left: 8,
                                                                top: 9,
                                                                right: 8,
                                                                bottom: 10,
                                                              ),
                                                              child: Text(
                                                                "lbl_satelite"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtManropeMedium10
                                                                    .copyWith(
                                                                  letterSpacing:
                                                                      0.40,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        margin: getMargin(
                                                          top: 16,
                                                        ),
                                                        decoration: AppDecoration
                                                            .outlineBlue50012
                                                            .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                left: 16,
                                                                top: 9,
                                                                right: 16,
                                                              ),
                                                              child:
                                                                  CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgCheckmark1,
                                                                height: getSize(
                                                                  16.00,
                                                                ),
                                                                width: getSize(
                                                                  16.00,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                left: 16,
                                                                top: 9,
                                                                right: 15,
                                                                bottom: 10,
                                                              ),
                                                              child: Text(
                                                                "lbl_draw".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtManropeMedium10Blue500
                                                                    .copyWith(
                                                                  letterSpacing:
                                                                      0.40,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        margin: getMargin(
                                                          top: 16,
                                                        ),
                                                        decoration: AppDecoration
                                                            .outlineGray30012
                                                            .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                left: 11,
                                                                top: 9,
                                                                right: 11,
                                                              ),
                                                              child:
                                                                  CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgRewind,
                                                                height: getSize(
                                                                  16.00,
                                                                ),
                                                                width: getSize(
                                                                  16.00,
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                  left: 11,
                                                                  top: 10,
                                                                  right: 8,
                                                                  bottom: 8,
                                                                ),
                                                                child: Text(
                                                                  "lbl_nearby"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtManropeMedium10
                                                                      .copyWith(
                                                                    letterSpacing:
                                                                        0.40,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                  height: getVerticalSize(
                                                    300.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    277.00,
                                                  ),
                                                  margin: getMargin(
                                                    left: 10,
                                                    bottom: 10,
                                                  ),
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Container(
                                                          height:
                                                              getVerticalSize(
                                                            300.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            240.00,
                                                          ),
                                                          margin: getMargin(
                                                            left: 1,
                                                            right: 10,
                                                          ),
                                                          child: Stack(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            children: [
                                                              Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child:
                                                                    CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgVectorBlue500300X240,
                                                                  height:
                                                                      getVerticalSize(
                                                                    300.00,
                                                                  ),
                                                                  width:
                                                                      getHorizontalSize(
                                                                    240.00,
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                child:
                                                                    Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                    183.00,
                                                                  ),
                                                                  margin:
                                                                      getMargin(
                                                                    left: 10,
                                                                    top: 14,
                                                                    right: 6,
                                                                    bottom: 14,
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomButton(
                                                                        width:
                                                                            82,
                                                                        text: "lbl_142_00"
                                                                            .tr,
                                                                        margin:
                                                                            getMargin(
                                                                          left:
                                                                              10,
                                                                        ),
                                                                        fontStyle:
                                                                            ButtonFontStyle.ManropeBold12WhiteA700,
                                                                        alignment:
                                                                            Alignment.centerRight,
                                                                      ),
                                                                      Align(
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              getPadding(
                                                                            left:
                                                                                73,
                                                                            top:
                                                                                32,
                                                                            right:
                                                                                73,
                                                                          ),
                                                                          child:
                                                                              CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgLocation2,
                                                                            height:
                                                                                getVerticalSize(
                                                                              26.00,
                                                                            ),
                                                                            width:
                                                                                getHorizontalSize(
                                                                              22.00,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      CustomButton(
                                                                        width:
                                                                            83,
                                                                        text: "lbl_100_00"
                                                                            .tr,
                                                                        margin:
                                                                            getMargin(
                                                                          top:
                                                                              135,
                                                                          right:
                                                                              10,
                                                                        ),
                                                                        variant:
                                                                            ButtonVariant.OutlineGray3001_2,
                                                                        fontStyle:
                                                                            ButtonFontStyle.ManropeBold12,
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      CustomButton(
                                                        width: 82,
                                                        text: "lbl_165_00".tr,
                                                        margin: getMargin(
                                                          top: 37,
                                                          right: 10,
                                                          bottom: 37,
                                                        ),
                                                        variant: ButtonVariant
                                                            .OutlineGray3001_2,
                                                        fontStyle:
                                                            ButtonFontStyle
                                                                .ManropeBold12,
                                                        alignment:
                                                            Alignment.topLeft,
                                                      ),
                                                      CustomButton(
                                                        width: 80,
                                                        text: "lbl_110_00".tr,
                                                        margin: getMargin(
                                                          left: 10,
                                                          top: 127,
                                                          bottom: 127,
                                                        ),
                                                        variant: ButtonVariant
                                                            .OutlineGray3001_2,
                                                        fontStyle:
                                                            ButtonFontStyle
                                                                .ManropeBold12,
                                                        alignment: Alignment
                                                            .centerRight,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: getMargin(
                                            left: 8,
                                            top: 16,
                                          ),
                                          decoration: AppDecoration
                                              .outlineBluegray40014
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  left: 16,
                                                  top: 16,
                                                  bottom: 16,
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      5.00,
                                                    ),
                                                  ),
                                                  child: CommonImageView(
                                                    imagePath:
                                                        ImageConstant.imgImage,
                                                    height: getVerticalSize(
                                                      83.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      94.00,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: getMargin(
                                                  left: 8,
                                                  top: 22,
                                                  bottom: 16,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "msg_primary_apartme".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeExtraBold16Gray900
                                                          .copyWith(
                                                        letterSpacing: 0.20,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                        width:
                                                            getHorizontalSize(
                                                          148.00,
                                                        ),
                                                        margin: getMargin(
                                                          top: 8,
                                                          right: 5,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                top: 4,
                                                                bottom: 4,
                                                              ),
                                                              child:
                                                                  CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgLock,
                                                                height: getSize(
                                                                  12.00,
                                                                ),
                                                                width: getSize(
                                                                  12.00,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                top: 4,
                                                                bottom: 2,
                                                              ),
                                                              child: Text(
                                                                "lbl_3".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtManropeMedium14
                                                                    .copyWith(),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                top: 5,
                                                                bottom: 5,
                                                              ),
                                                              child:
                                                                  CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgPrinter,
                                                                height:
                                                                    getVerticalSize(
                                                                  10.00,
                                                                ),
                                                                width:
                                                                    getHorizontalSize(
                                                                  13.00,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                top: 3,
                                                                bottom: 3,
                                                              ),
                                                              child: Text(
                                                                "lbl_2".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtManropeMedium14
                                                                    .copyWith(),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                top: 3,
                                                                bottom: 3,
                                                              ),
                                                              child:
                                                                  CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVector,
                                                                height: getSize(
                                                                  13.00,
                                                                ),
                                                                width: getSize(
                                                                  13.00,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: getMargin(
                                                                top: 4,
                                                                bottom: 2,
                                                              ),
                                                              child: RichText(
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text: "lbl_1_880"
                                                                          .tr,
                                                                      style:
                                                                          TextStyle(
                                                                        color: ColorConstant
                                                                            .bluegray500,
                                                                        fontSize:
                                                                            getFontSize(
                                                                          14,
                                                                        ),
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text: ' ',
                                                                      style:
                                                                          TextStyle(
                                                                        color: ColorConstant
                                                                            .bluegray500,
                                                                        fontSize:
                                                                            getFontSize(
                                                                          14,
                                                                        ),
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        fontWeight:
                                                                            FontWeight.w800,
                                                                        letterSpacing:
                                                                            0.20,
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text: "lbl_ft"
                                                                          .tr,
                                                                      style:
                                                                          TextStyle(
                                                                        color: ColorConstant
                                                                            .bluegray500,
                                                                        fontSize:
                                                                            getFontSize(
                                                                          10,
                                                                        ),
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        letterSpacing:
                                                                            0.40,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: getMargin(
                                                        top: 11,
                                                        right: 10,
                                                      ),
                                                      child: RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: "lbl_1_600"
                                                                  .tr,
                                                              style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .blue500,
                                                                fontSize:
                                                                    getFontSize(
                                                                  16,
                                                                ),
                                                                fontFamily:
                                                                    'Manrope',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                                letterSpacing:
                                                                    0.20,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text: "lbl_month"
                                                                  .tr,
                                                              style: TextStyle(
                                                                color: ColorConstant
                                                                    .bluegray500,
                                                                fontSize:
                                                                    getFontSize(
                                                                  12,
                                                                ),
                                                                fontFamily:
                                                                    'Manrope',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                letterSpacing:
                                                                    0.40,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        textAlign:
                                                            TextAlign.left,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
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
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: getPadding(
                              bottom: 10,
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.imgMapsiclemap,
                              height: getVerticalSize(
                                693.00,
                              ),
                              width: getHorizontalSize(
                                375.00,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
                boxShadow: [
                  BoxShadow(
                    color: ColorConstant.bluegray1000f,
                    spreadRadius: getHorizontalSize(
                      2.00,
                    ),
                    blurRadius: getHorizontalSize(
                      2.00,
                    ),
                    offset: Offset(
                      0,
                      -8,
                    ),
                  ),
                ],
              ),
              child: Padding(
                padding: getPadding(
                  top: 16,
                  bottom: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      margin: getMargin(
                        top: 2,
                        bottom: 2,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 4,
                                right: 4,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgHomeBluegray500,
                                height: getVerticalSize(
                                  20.00,
                                ),
                                width: getHorizontalSize(
                                  19.00,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 8,
                            ),
                            child: Text(
                              "lbl_home".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeMedium10.copyWith(
                                letterSpacing: 0.40,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 2,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 13,
                              right: 13,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgCheckmark,
                              height: getVerticalSize(
                                18.00,
                              ),
                              width: getHorizontalSize(
                                20.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Text(
                                "lbl_message".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtManropeMedium10.copyWith(
                                  letterSpacing: 0.40,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 2,
                        bottom: 2,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 14,
                              right: 14,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgLocation2,
                              height: getVerticalSize(
                                20.00,
                              ),
                              width: getHorizontalSize(
                                17.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                top: 8,
                              ),
                              child: Text(
                                "lbl_discover".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtManropeMedium10Blue500.copyWith(
                                  letterSpacing: 0.40,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 12,
                              top: 1,
                              right: 12,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgHome21X21,
                              height: getSize(
                                21.00,
                              ),
                              width: getSize(
                                21.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                top: 9,
                              ),
                              child: Text(
                                "lbl_my_home".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtManropeMedium10.copyWith(
                                  letterSpacing: 0.40,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 2,
                        bottom: 2,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 7,
                              right: 7,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgUser1,
                              height: getVerticalSize(
                                20.00,
                              ),
                              width: getHorizontalSize(
                                16.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                top: 8,
                              ),
                              child: Text(
                                "lbl_profile".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtManropeMedium10.copyWith(
                                  letterSpacing: 0.40,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
