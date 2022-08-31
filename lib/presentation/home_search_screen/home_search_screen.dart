import '../home_search_screen/widgets/listimg3_item_widget.dart';
import 'controller/home_search_controller.dart';
import 'models/listimg3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:housing/core/app_export.dart';
import 'package:housing/widgets/custom_icon_button.dart';
import 'package:housing/widgets/custom_text_form_field.dart';

class HomeSearchScreen extends GetWidget<HomeSearchController> {
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
                    margin: getMargin(
                      top: 24,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: getMargin(
                            left: 24,
                            right: 24,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: size.width,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CustomTextFormField(
                                      width: 271,
                                      focusNode: FocusNode(),
                                      controller: controller.searchController,
                                      hintText: "msg_360_stillwater".tr,
                                      variant: TextFormFieldVariant
                                          .OutlineBlue5001_2,
                                      shape: TextFormFieldShape.CircleBorder24,
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
                                          svgPath: ImageConstant.imgEye20X17,
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
                                          svgPath: ImageConstant.imgClose12X12,
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
                                      padding: IconButtonPadding.PaddingAll14,
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgVectorGray900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 1,
                                  top: 17,
                                  right: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        bottom: 1,
                                      ),
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgLocation17X17,
                                        height: getSize(
                                          17.00,
                                        ),
                                        width: getSize(
                                          17.00,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 13,
                                        top: 4,
                                      ),
                                      child: Text(
                                        "msg_or_use_my_curre".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtManropeSemiBold14
                                            .copyWith(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 35,
                                  right: 10,
                                ),
                                child: Text(
                                  "lbl_search_results".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtManropeSemiBold14Bluegray500
                                      .copyWith(),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 19,
                                ),
                                child: Obx(
                                  () => ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: controller.homeSearchModelObj
                                        .value.listimg3ItemList.length,
                                    itemBuilder: (context, index) {
                                      Listimg3ItemModel model = controller
                                          .homeSearchModelObj
                                          .value
                                          .listimg3ItemList[index];
                                      return Listimg3ItemWidget(
                                        model,
                                      );
                                    },
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
            ),
          ],
        ),
      ),
    );
  }
}
