import '../filter_screen/widgets/listbeds_item_widget.dart';
import '../filter_screen/widgets/listfreewifi1_item_widget.dart';
import '../filter_screen/widgets/listimg4_item_widget.dart';
import 'controller/filter_controller.dart';
import 'models/listbeds_item_model.dart';
import 'models/listfreewifi1_item_model.dart';
import 'models/listimg4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:housing/core/app_export.dart';
import 'package:housing/widgets/custom_button.dart';
import 'package:housing/widgets/custom_drop_down.dart';
import 'package:housing/widgets/custom_icon_button.dart';

class FilterScreen extends GetWidget<FilterController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Column(
          children: [
            Expanded(
              child: Container(
                height: getVerticalSize(
                  1123.00,
                ),
                width: size.width,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SingleChildScrollView(
                        child: Container(
                          height: getVerticalSize(
                            1123.00,
                          ),
                          width: size.width,
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: getMargin(
                                    left: 24,
                                    top: 40,
                                    right: 24,
                                    bottom: 40,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: AppDecoration
                                            .outlineGray30012
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder10,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                left: 18,
                                                top: 18,
                                                bottom: 18,
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgSearch,
                                                    height: getSize(
                                                      20.00,
                                                    ),
                                                    width: getSize(
                                                      20.00,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 14,
                                                      top: 2,
                                                      bottom: 1,
                                                    ),
                                                    child: Text(
                                                      "lbl_search".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManrope16
                                                          .copyWith(
                                                        letterSpacing: 0.30,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            CustomIconButton(
                                              height: 40,
                                              width: 40,
                                              margin: getMargin(
                                                top: 8,
                                                right: 8,
                                                bottom: 8,
                                              ),
                                              variant:
                                                  IconButtonVariant.FillBlue500,
                                              shape: IconButtonShape
                                                  .RoundedBorder10,
                                              child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgSettings1,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 24,
                                        ),
                                        child: Obx(
                                          () => ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: controller.filterModelObj
                                                .value.listimg4ItemList.length,
                                            itemBuilder: (context, index) {
                                              Listimg4ItemModel model =
                                                  controller
                                                      .filterModelObj
                                                      .value
                                                      .listimg4ItemList[index];
                                              return Listimg4ItemWidget(
                                                model,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  decoration: AppDecoration.fillGray9007e,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          width: double.infinity,
                                          margin: getMargin(
                                            top: 16,
                                          ),
                                          decoration:
                                              AppDecoration.fillGray50.copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderTL20,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                height: getVerticalSize(
                                                  5.00,
                                                ),
                                                width: getHorizontalSize(
                                                  56.00,
                                                ),
                                                margin: getMargin(
                                                  left: 24,
                                                  top: 8,
                                                  right: 24,
                                                ),
                                                decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.bluegray500,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      2.50,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 24,
                                                  top: 16,
                                                  right: 24,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    CustomIconButton(
                                                      height: 40,
                                                      width: 40,
                                                      padding: IconButtonPadding
                                                          .PaddingAll14,
                                                      child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgClose,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 95,
                                                        top: 11,
                                                        bottom: 10,
                                                      ),
                                                      child: Text(
                                                        "lbl_filters".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtManropeExtraBold18
                                                            .copyWith(
                                                          letterSpacing: 0.20,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  margin: getMargin(
                                                    left: 24,
                                                    top: 32,
                                                    right: 24,
                                                  ),
                                                  decoration: AppDecoration
                                                      .fillBluegray50
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      CustomButton(
                                                        width: 159,
                                                        text: "lbl_for_sale".tr,
                                                        margin: getMargin(
                                                          left: 4,
                                                          top: 4,
                                                          bottom: 4,
                                                        ),
                                                        variant: ButtonVariant
                                                            .OutlineBluegray40014,
                                                        shape: ButtonShape
                                                            .RoundedBorder5,
                                                        padding: ButtonPadding
                                                            .PaddingAll14,
                                                        fontStyle:
                                                            ButtonFontStyle
                                                                .ManropeBold14,
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 54,
                                                          top: 17,
                                                          bottom: 16,
                                                        ),
                                                        child: Text(
                                                          "lbl_for_rent".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtManropeSemiBold14Bluegray500
                                                              .copyWith(),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: getPadding(
                                                    left: 24,
                                                    top: 30,
                                                    right: 24,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 1,
                                                        ),
                                                        child: Text(
                                                          "lbl_price_range".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtManropeExtraBold16Gray900
                                                              .copyWith(
                                                            letterSpacing: 0.20,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          bottom: 3,
                                                        ),
                                                        child: Text(
                                                          "lbl_200_15_000".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtManropeSemiBold14Blue500
                                                              .copyWith(),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  height: getVerticalSize(
                                                    24.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    327.00,
                                                  ),
                                                  margin: getMargin(
                                                    left: 24,
                                                    top: 24,
                                                    right: 24,
                                                  ),
                                                  child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      Container(
                                                        height: getVerticalSize(
                                                          3.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          327.00,
                                                        ),
                                                        margin: getMargin(
                                                          top: 10,
                                                          bottom: 7,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: ColorConstant
                                                              .gray300,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Padding(
                                                          padding: getPadding(
                                                            left: 40,
                                                            right: 40,
                                                          ),
                                                          child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Container(
                                                                decoration:
                                                                    AppDecoration
                                                                        .fillBlue500
                                                                        .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder5,
                                                                ),
                                                                child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Padding(
                                                                      padding:
                                                                          getPadding(
                                                                        left: 6,
                                                                        top: 9,
                                                                        bottom:
                                                                            9,
                                                                      ),
                                                                      child:
                                                                          CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgArrowleftBluegray50,
                                                                        height:
                                                                            getVerticalSize(
                                                                          5.00,
                                                                        ),
                                                                        width:
                                                                            getHorizontalSize(
                                                                          2.00,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding:
                                                                          getPadding(
                                                                        left: 5,
                                                                        top: 9,
                                                                        right:
                                                                            6,
                                                                        bottom:
                                                                            9,
                                                                      ),
                                                                      child:
                                                                          CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgArrowrightBluegray50,
                                                                        height:
                                                                            getVerticalSize(
                                                                          5.00,
                                                                        ),
                                                                        width:
                                                                            getHorizontalSize(
                                                                          2.00,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                height:
                                                                    getVerticalSize(
                                                                  3.00,
                                                                ),
                                                                width:
                                                                    getHorizontalSize(
                                                                  103.00,
                                                                ),
                                                                margin:
                                                                    getMargin(
                                                                  top: 14,
                                                                  bottom: 7,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: ColorConstant
                                                                      .blue500,
                                                                ),
                                                              ),
                                                              Container(
                                                                decoration:
                                                                    AppDecoration
                                                                        .fillBlue500
                                                                        .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder5,
                                                                ),
                                                                child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Padding(
                                                                      padding:
                                                                          getPadding(
                                                                        left: 6,
                                                                        top: 9,
                                                                        bottom:
                                                                            9,
                                                                      ),
                                                                      child:
                                                                          CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgArrowleftBluegray50,
                                                                        height:
                                                                            getVerticalSize(
                                                                          5.00,
                                                                        ),
                                                                        width:
                                                                            getHorizontalSize(
                                                                          2.00,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding:
                                                                          getPadding(
                                                                        left: 5,
                                                                        top: 9,
                                                                        right:
                                                                            6,
                                                                        bottom:
                                                                            9,
                                                                      ),
                                                                      child:
                                                                          CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgArrowrightBluegray50,
                                                                        height:
                                                                            getVerticalSize(
                                                                          5.00,
                                                                        ),
                                                                        width:
                                                                            getHorizontalSize(
                                                                          2.00,
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
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 24,
                                                  top: 28,
                                                  right: 24,
                                                ),
                                                child: Text(
                                                  "lbl_features".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtManropeExtraBold16Gray900
                                                      .copyWith(
                                                    letterSpacing: 0.20,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: getPadding(
                                                    left: 24,
                                                    top: 23,
                                                    right: 24,
                                                  ),
                                                  child: Obx(
                                                    () => ListView.builder(
                                                      physics:
                                                          NeverScrollableScrollPhysics(),
                                                      shrinkWrap: true,
                                                      itemCount: controller
                                                          .filterModelObj
                                                          .value
                                                          .listbedsItemList
                                                          .length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        ListbedsItemModel
                                                            model = controller
                                                                .filterModelObj
                                                                .value
                                                                .listbedsItemList[index];
                                                        return ListbedsItemWidget(
                                                          model,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 24,
                                                  top: 30,
                                                  right: 24,
                                                ),
                                                child: Text(
                                                  "lbl_property_facts".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtManropeExtraBold16Gray900
                                                      .copyWith(
                                                    letterSpacing: 0.20,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 24,
                                                  top: 21,
                                                  right: 24,
                                                ),
                                                child: Text(
                                                  "lbl_square_feet".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtManropeSemiBold14
                                                      .copyWith(),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: getPadding(
                                                    left: 24,
                                                    top: 8,
                                                    right: 24,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      CustomDropDown(
                                                        width: 139,
                                                        focusNode: FocusNode(),
                                                        icon: Container(
                                                          margin: getMargin(
                                                            left: 30,
                                                            right: 15,
                                                          ),
                                                          child:
                                                              CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowdownBluegray5006X11,
                                                          ),
                                                        ),
                                                        hintText: "lbl_min".tr,
                                                        items: controller
                                                            .filterModelObj
                                                            .value
                                                            .dropdownItemList,
                                                        onChanged: (value) {
                                                          controller.onSelected(
                                                              value);
                                                        },
                                                      ),
                                                      Container(
                                                        height: getVerticalSize(
                                                          2.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          16.00,
                                                        ),
                                                        margin: getMargin(
                                                          left: 16,
                                                          top: 24,
                                                          bottom: 19,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: ColorConstant
                                                              .bluegray500,
                                                        ),
                                                      ),
                                                      CustomDropDown(
                                                        width: 139,
                                                        focusNode: FocusNode(),
                                                        icon: Container(
                                                          margin: getMargin(
                                                            left: 30,
                                                            right: 15,
                                                          ),
                                                          child:
                                                              CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowdownBluegray5006X11,
                                                          ),
                                                        ),
                                                        hintText: "lbl_max".tr,
                                                        margin: getMargin(
                                                          left: 17,
                                                        ),
                                                        items: controller
                                                            .filterModelObj
                                                            .value
                                                            .dropdownItemList1,
                                                        onChanged: (value) {
                                                          controller
                                                              .onSelected1(
                                                                  value);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 24,
                                                  top: 19,
                                                  right: 24,
                                                ),
                                                child: Text(
                                                  "lbl_lot_size".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtManropeSemiBold14
                                                      .copyWith(),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: getPadding(
                                                    left: 24,
                                                    top: 11,
                                                    right: 24,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      CustomDropDown(
                                                        width: 139,
                                                        focusNode: FocusNode(),
                                                        icon: Container(
                                                          margin: getMargin(
                                                            left: 30,
                                                            right: 15,
                                                          ),
                                                          child:
                                                              CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowdownBluegray5006X11,
                                                          ),
                                                        ),
                                                        hintText: "lbl_min".tr,
                                                        items: controller
                                                            .filterModelObj
                                                            .value
                                                            .dropdownItemList2,
                                                        onChanged: (value) {
                                                          controller
                                                              .onSelected2(
                                                                  value);
                                                        },
                                                      ),
                                                      Container(
                                                        height: getVerticalSize(
                                                          2.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          16.00,
                                                        ),
                                                        margin: getMargin(
                                                          left: 16,
                                                          top: 24,
                                                          bottom: 19,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: ColorConstant
                                                              .bluegray500,
                                                        ),
                                                      ),
                                                      CustomDropDown(
                                                        width: 139,
                                                        focusNode: FocusNode(),
                                                        icon: Container(
                                                          margin: getMargin(
                                                            left: 30,
                                                            right: 15,
                                                          ),
                                                          child:
                                                              CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowdownBluegray5006X11,
                                                          ),
                                                        ),
                                                        hintText: "lbl_max".tr,
                                                        margin: getMargin(
                                                          left: 17,
                                                        ),
                                                        items: controller
                                                            .filterModelObj
                                                            .value
                                                            .dropdownItemList3,
                                                        onChanged: (value) {
                                                          controller
                                                              .onSelected3(
                                                                  value);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 24,
                                                  top: 30,
                                                  right: 24,
                                                ),
                                                child: Text(
                                                  "lbl_property_type".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtManropeExtraBold16Gray900
                                                      .copyWith(
                                                    letterSpacing: 0.20,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: getPadding(
                                                    left: 24,
                                                    top: 16,
                                                    right: 24,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        padding: getPadding(
                                                          left: 20,
                                                          top: 12,
                                                          right: 20,
                                                          bottom: 10,
                                                        ),
                                                        decoration: AppDecoration
                                                            .txtOutlineBluegray400
                                                            .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtRoundedBorder18,
                                                        ),
                                                        child: Text(
                                                          "lbl_home".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtManropeMedium14Gray900
                                                              .copyWith(),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: getMargin(
                                                          left: 8,
                                                        ),
                                                        padding: getPadding(
                                                          left: 20,
                                                          top: 11,
                                                          right: 20,
                                                          bottom: 11,
                                                        ),
                                                        decoration: AppDecoration
                                                            .txtOutlineBluegray400
                                                            .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtRoundedBorder18,
                                                        ),
                                                        child: Text(
                                                          "lbl_villa".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtManropeMedium14Gray900
                                                              .copyWith(),
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: getMargin(
                                                          left: 8,
                                                        ),
                                                        padding: getPadding(
                                                          left: 20,
                                                          top: 11,
                                                          right: 20,
                                                          bottom: 11,
                                                        ),
                                                        decoration: AppDecoration
                                                            .txtOutlineBluegray400
                                                            .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtRoundedBorder18,
                                                        ),
                                                        child: Text(
                                                          "msg_breakfast_inclu"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtManropeMedium14Gray900
                                                              .copyWith(),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 24,
                                                  top: 8,
                                                  right: 24,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    CustomButton(
                                                      width: 116,
                                                      text: "lbl_townhouse".tr,
                                                      variant: ButtonVariant
                                                          .OutlineBluegray400,
                                                      fontStyle: ButtonFontStyle
                                                          .ManropeMedium14,
                                                    ),
                                                    CustomButton(
                                                      width: 84,
                                                      text: "lbl_condo".tr,
                                                      margin: getMargin(
                                                        left: 8,
                                                      ),
                                                      variant: ButtonVariant
                                                          .OutlineBluegray400,
                                                      fontStyle: ButtonFontStyle
                                                          .ManropeMedium14,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 24,
                                                  top: 26,
                                                  right: 24,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 2,
                                                        bottom: 1,
                                                      ),
                                                      child: Text(
                                                        "lbl_ammentities".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtManropeExtraBold16Gray900
                                                            .copyWith(
                                                          letterSpacing: 0.20,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 5,
                                                        top: 1,
                                                        bottom: 1,
                                                      ),
                                                      child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgWarning,
                                                        height: getSize(
                                                          16.00,
                                                        ),
                                                        width: getSize(
                                                          16.00,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 24,
                                                  top: 18,
                                                  right: 24,
                                                ),
                                                child: Obx(
                                                  () => ListView.builder(
                                                    physics:
                                                        NeverScrollableScrollPhysics(),
                                                    shrinkWrap: true,
                                                    itemCount: controller
                                                        .filterModelObj
                                                        .value
                                                        .listfreewifi1ItemList
                                                        .length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      Listfreewifi1ItemModel
                                                          model = controller
                                                                  .filterModelObj
                                                                  .value
                                                                  .listfreewifi1ItemList[
                                                              index];
                                                      return Listfreewifi1ItemWidget(
                                                        model,
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 24,
                                                  top: 8,
                                                  right: 24,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    CustomButton(
                                                      width: 94,
                                                      text: "lbl_elevator".tr,
                                                      variant: ButtonVariant
                                                          .OutlineBluegray400,
                                                      fontStyle: ButtonFontStyle
                                                          .ManropeMedium14,
                                                    ),
                                                    CustomButton(
                                                      width: 129,
                                                      text:
                                                          "lbl_garage_spots".tr,
                                                      margin: getMargin(
                                                        left: 8,
                                                      ),
                                                      variant: ButtonVariant
                                                          .OutlineBluegray400,
                                                      fontStyle: ButtonFontStyle
                                                          .ManropeMedium14,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 24,
                                                  top: 18,
                                                  right: 24,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 1,
                                                        bottom: 1,
                                                      ),
                                                      child: Text(
                                                        "lbl_see_more".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtManropeBold14
                                                            .copyWith(
                                                          letterSpacing: 0.20,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 10,
                                                        top: 3,
                                                        bottom: 3,
                                                      ),
                                                      child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowright,
                                                        height: getVerticalSize(
                                                          8.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          11.00,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: getMargin(
                                                  top: 26,
                                                ),
                                                decoration: AppDecoration
                                                    .outlineBluegray1000f,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    CustomButton(
                                                      width: 156,
                                                      text: "lbl_reset".tr,
                                                      margin: getMargin(
                                                        left: 24,
                                                        top: 24,
                                                        bottom: 24,
                                                      ),
                                                      variant: ButtonVariant
                                                          .OutlineBlue500,
                                                      shape: ButtonShape
                                                          .RoundedBorder10,
                                                      padding: ButtonPadding
                                                          .PaddingAll20,
                                                      fontStyle: ButtonFontStyle
                                                          .ManropeBold16Blue500,
                                                    ),
                                                    CustomButton(
                                                      width: 156,
                                                      text: "lbl_apply".tr,
                                                      margin: getMargin(
                                                        left: 15,
                                                        top: 24,
                                                        bottom: 24,
                                                      ),
                                                      shape: ButtonShape
                                                          .RoundedBorder10,
                                                      padding: ButtonPadding
                                                          .PaddingAll20,
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
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: size.width,
                        margin: getMargin(
                          bottom: 10,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray50,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: getMargin(
                                top: 2,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      right: 10,
                                    ),
                                    child: Text(
                                      "lbl_location".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtManropeMedium10.copyWith(
                                        letterSpacing: 0.40,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: getHorizontalSize(
                                        141.00,
                                      ),
                                      margin: getMargin(
                                        top: 9,
                                        right: 1,
                                        bottom: 2,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              left: 2,
                                              top: 2,
                                              bottom: 1,
                                            ),
                                            child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgLocation,
                                              height: getVerticalSize(
                                                12.00,
                                              ),
                                              width: getHorizontalSize(
                                                10.00,
                                              ),
                                            ),
                                          ),
                                          CustomDropDown(
                                            width: 117,
                                            focusNode: FocusNode(),
                                            icon: Container(
                                              margin: getMargin(
                                                left: 7,
                                              ),
                                              child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowdown,
                                              ),
                                            ),
                                            hintText: "lbl_hanoi_vietnam".tr,
                                            margin: getMargin(
                                              top: 2,
                                            ),
                                            fontStyle: DropDownFontStyle
                                                .ManropeSemiBold14,
                                            items: controller.filterModelObj
                                                .value.dropdownItemList4,
                                            onChanged: (value) {
                                              controller.onSelected4(value);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomIconButton(
                                  height: 40,
                                  width: 40,
                                  variant:
                                      IconButtonVariant.OutlineBluegray501_2,
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgGrid,
                                  ),
                                ),
                                CustomIconButton(
                                  height: 40,
                                  width: 40,
                                  margin: getMargin(
                                    left: 12,
                                  ),
                                  variant:
                                      IconButtonVariant.OutlineBluegray501_2,
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgNotification,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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
                              svgPath: ImageConstant.imgHome,
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
                            style: AppStyle.txtManropeMedium10Blue500.copyWith(
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
                            svgPath: ImageConstant.imgLocation1,
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 11,
                              top: 1,
                              right: 11,
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
                            svgPath: ImageConstant.imgUser20X16,
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
          ],
        ),
      ),
    );
  }
}
