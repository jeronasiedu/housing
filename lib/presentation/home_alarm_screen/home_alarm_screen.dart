import '../home_alarm_screen/widgets/listimg1_item_widget.dart';
import 'controller/home_alarm_controller.dart';
import 'models/listimg1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:housing/core/app_export.dart';
import 'package:housing/widgets/custom_drop_down.dart';
import 'package:housing/widgets/custom_icon_button.dart';
import 'package:housing/widgets/custom_search_view.dart';
import 'package:housing/widgets/custom_text_form_field.dart';

class HomeAlarmScreen extends GetWidget<HomeAlarmController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: size.width,
                      decoration: BoxDecoration(
                        color: ColorConstant.gray50,
                      ),
                      child: Padding(
                        padding: getPadding(
                          left: 24,
                          top: 10,
                          right: 24,
                          bottom: 10,
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
                                        171.00,
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
                                            width: 147,
                                            focusNode: FocusNode(),
                                            icon: Container(
                                              margin: getMargin(
                                                left: 5,
                                              ),
                                              child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowdown,
                                              ),
                                            ),
                                            hintText: "msg_st_celina_del".tr,
                                            margin: getMargin(
                                              top: 2,
                                            ),
                                            fontStyle: DropDownFontStyle
                                                .ManropeSemiBold14,
                                            items: controller.homeAlarmModelObj
                                                .value.dropdownItemList,
                                            onChanged: (value) {
                                              controller.onSelected(value);
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
                                  variant: IconButtonVariant.OutlineBluegray50,
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
                                  variant: IconButtonVariant.OutlineBluegray50,
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
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: SingleChildScrollView(
                          padding: getPadding(
                            left: 24,
                            top: 24,
                            right: 24,
                          ),
                          child: Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomSearchView(
                                  width: 327,
                                  focusNode: FocusNode(),
                                  controller: controller.serchController,
                                  hintText: "lbl_search".tr,
                                  prefix: Container(
                                    margin: getMargin(
                                      left: 18,
                                      top: 18,
                                      right: 14,
                                      bottom: 18,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgSearch,
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
                                  suffix: Padding(
                                    padding: EdgeInsets.only(
                                      right: getHorizontalSize(
                                        15.00,
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed:
                                          controller.serchController.clear,
                                      icon: Icon(
                                        Icons.clear,
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                  suffixConstraints: BoxConstraints(
                                    minWidth: getHorizontalSize(
                                      16.00,
                                    ),
                                    minHeight: getVerticalSize(
                                      14.00,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  margin: getMargin(
                                    top: 24,
                                  ),
                                  decoration:
                                      AppDecoration.outlineGray30012.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 16,
                                          top: 16,
                                          right: 16,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              margin: getMargin(
                                                top: 6,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      right: 10,
                                                    ),
                                                    child: Text(
                                                      "msg_mighty_cinco_fa".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeBold16
                                                          .copyWith(
                                                        letterSpacing: 0.20,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: getHorizontalSize(
                                                      174.00,
                                                    ),
                                                    margin: getMargin(
                                                      top: 6,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding: getPadding(
                                                            top: 1,
                                                            bottom: 3,
                                                          ),
                                                          child:
                                                              CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgSearchBlue500,
                                                            height:
                                                                getVerticalSize(
                                                              10.00,
                                                            ),
                                                            width:
                                                                getHorizontalSize(
                                                              9.00,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            top: 3,
                                                          ),
                                                          child: Text(
                                                            "msg_st_celina_del2"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtManrope12
                                                                .copyWith(
                                                              letterSpacing:
                                                                  0.40,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: getMargin(
                                                top: 3,
                                                bottom: 3,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 2,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 1,
                                                            top: 1,
                                                            bottom: 2,
                                                          ),
                                                          child:
                                                              CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgCalendar,
                                                            height:
                                                                getVerticalSize(
                                                              12.00,
                                                            ),
                                                            width:
                                                                getHorizontalSize(
                                                              11.00,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 7,
                                                            top: 3,
                                                          ),
                                                          child: Text(
                                                            "lbl_jan_1_2021".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtManropeSemiBold12
                                                                .copyWith(
                                                              letterSpacing:
                                                                  0.40,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 6,
                                                      right: 10,
                                                      bottom: 2,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        CustomIconButton(
                                                          height: 12,
                                                          width: 12,
                                                          margin: getMargin(
                                                            left: 1,
                                                            top: 1,
                                                            bottom: 1,
                                                          ),
                                                          variant:
                                                              IconButtonVariant
                                                                  .FillBlue500,
                                                          shape: IconButtonShape
                                                              .CircleBorder6,
                                                          padding:
                                                              IconButtonPadding
                                                                  .PaddingAll3,
                                                          child:
                                                              CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgVectorBlue500,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 6,
                                                            top: 1,
                                                            bottom: 1,
                                                          ),
                                                          child: Text(
                                                            "lbl_4_00_pm".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtManropeSemiBold12
                                                                .copyWith(
                                                              letterSpacing:
                                                                  0.40,
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
                                      Padding(
                                        padding: getPadding(
                                          left: 16,
                                          top: 14,
                                          right: 16,
                                          bottom: 14,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 2,
                                                bottom: 2,
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    8.00,
                                                  ),
                                                ),
                                                child: CommonImageView(
                                                  imagePath:
                                                      ImageConstant.imgAvatar,
                                                  height: getSize(
                                                    33.00,
                                                  ),
                                                  width: getSize(
                                                    33.00,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: getMargin(
                                                left: 10,
                                                top: 5,
                                                bottom: 4,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      right: 10,
                                                    ),
                                                    child: Text(
                                                      "lbl_buyer_s_agent".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManrope10
                                                          .copyWith(
                                                        letterSpacing: 0.40,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 3,
                                                    ),
                                                    child: Text(
                                                      "msg_leslie_alexande".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeSemiBold12
                                                          .copyWith(
                                                        letterSpacing: 0.40,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            CustomTextFormField(
                                              width: 103,
                                              focusNode: FocusNode(),
                                              controller:
                                                  controller.phoneController,
                                              hintText: "lbl_phone".tr,
                                              margin: getMargin(
                                                left: 49,
                                              ),
                                              variant: TextFormFieldVariant
                                                  .OutlineBlue500,
                                              shape: TextFormFieldShape
                                                  .RoundedBorder5,
                                              padding: TextFormFieldPadding
                                                  .PaddingT13,
                                              fontStyle: TextFormFieldFontStyle
                                                  .ManropeSemiBold14Blue500,
                                              textInputAction:
                                                  TextInputAction.done,
                                              prefix: Container(
                                                margin: getMargin(
                                                  left: 18,
                                                  top: 11,
                                                  right: 11,
                                                  bottom: 11,
                                                ),
                                                child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgCall,
                                                ),
                                              ),
                                              prefixConstraints: BoxConstraints(
                                                minWidth: getSize(
                                                  14.00,
                                                ),
                                                minHeight: getSize(
                                                  14.00,
                                                ),
                                              ),
                                            ),
                                          ],
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
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.homeAlarmModelObj
                                          .value.listimg1ItemList.length,
                                      itemBuilder: (context, index) {
                                        Listimg1ItemModel model = controller
                                            .homeAlarmModelObj
                                            .value
                                            .listimg1ItemList[index];
                                        return Listimg1ItemWidget(
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
                              style:
                                  AppStyle.txtManropeMedium10Blue500.copyWith(
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
            ),
          ],
        ),
      ),
    );
  }
}
