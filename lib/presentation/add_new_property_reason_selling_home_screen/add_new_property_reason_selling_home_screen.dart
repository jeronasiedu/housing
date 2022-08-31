import 'controller/add_new_property_reason_selling_home_controller.dart';import 'package:flutter/material.dart';import 'package:housing/core/app_export.dart';import 'package:housing/widgets/custom_button.dart';import 'package:housing/widgets/custom_checkbox.dart';import 'package:housing/widgets/custom_icon_button.dart';class AddNewPropertyReasonSellingHomeScreen extends GetWidget<AddNewPropertyReasonSellingHomeController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray50, body: Container(width: size.width, child: SingleChildScrollView(child: Container(child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [Container(width: size.width, margin: getMargin(left: 24, top: 8, right: 24), child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [CustomIconButton(height: 40, width: 40, padding: IconButtonPadding.PaddingAll14, onTap: () {onTapBtntf();}, child: CommonImageView(svgPath: ImageConstant.imgArrowleft)), Padding(padding: getPadding(left: 42, top: 14, bottom: 7), child: Text("msg_add_new_propert".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeExtraBold18.copyWith(letterSpacing: 0.20)))])), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 32, right: 24), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(top: 11, bottom: 6), child: Text("msg_reason_selling".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeSemiBold14.copyWith())), CustomButton(width: 79, text: "lbl_04_08".tr, fontStyle: ButtonFontStyle.ManropeSemiBold14)]))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 16, right: 24), child: Container(height: getVerticalSize(6.00), width: getHorizontalSize(327.00), decoration: BoxDecoration(color: ColorConstant.bluegray50, borderRadius: BorderRadius.circular(getHorizontalSize(3.00))), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(3.00)), child: LinearProgressIndicator(value: 0.5, backgroundColor: ColorConstant.bluegray50, valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.blue500)))))), Padding(padding: getPadding(left: 24, top: 29, right: 24), child: Text("msg_why_are_you_sel".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeBold18.copyWith(letterSpacing: 0.20))), Align(alignment: Alignment.center, child: Obx(() => CustomCheckbox(alignment: Alignment.center, text: "msg_upgrading_my_ho".tr, iconSize: 20, value: controller.checkbox.value, padding: getPadding(left: 24, top: 16, right: 24), onChange: (value) {controller.checkbox.value = value;}))), Align(alignment: Alignment.center, child: Obx(() => CustomCheckbox(alignment: Alignment.center, text: "msg_selling_seconda".tr, iconSize: 20, value: controller.checkbox1.value, padding: getPadding(left: 24, top: 8, right: 24), onChange: (value) {controller.checkbox1.value = value;}))), Align(alignment: Alignment.center, child: Obx(() => CustomCheckbox(alignment: Alignment.center, text: "lbl_relocating".tr, iconSize: 20, value: controller.checkbox2.value, padding: getPadding(left: 24, top: 8, right: 24), onChange: (value) {controller.checkbox2.value = value;}))), Align(alignment: Alignment.center, child: Obx(() => CustomCheckbox(alignment: Alignment.center, text: "msg_downsizing_my_h".tr, iconSize: 20, value: controller.checkbox3.value, padding: getPadding(left: 24, top: 8, right: 24), onChange: (value) {controller.checkbox3.value = value;}))), Align(alignment: Alignment.center, child: Obx(() => CustomCheckbox(alignment: Alignment.center, text: "lbl_retiring".tr, iconSize: 20, value: controller.checkbox4.value, padding: getPadding(left: 24, top: 8, right: 24), onChange: (value) {controller.checkbox4.value = value;}))), Align(alignment: Alignment.center, child: Container(width: double.infinity, margin: getMargin(left: 24, top: 8, right: 24), decoration: AppDecoration.outlineGray300.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.centerLeft, child: Obx(() => CustomCheckbox(alignment: Alignment.centerLeft, text: "lbl_other".tr, iconSize: 20, value: controller.checkbox5.value, padding: getPadding(left: 16, top: 16, right: 16), onChange: (value) {controller.checkbox5.value = value;}))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 44, top: 10, right: 44), child: Text("msg_please_enter_yo".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManrope12Gray900.copyWith(letterSpacing: 0.40)))), Align(alignment: Alignment.centerRight, child: Container(width: double.infinity, margin: getMargin(left: 20, top: 12, right: 20, bottom: 16), decoration: AppDecoration.fillBluegray5087.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Container(width: getHorizontalSize(209.00), margin: getMargin(left: 12, top: 17, right: 12, bottom: 15), child: Text("msg_e_g_i_m_helpin".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtManrope12.copyWith(letterSpacing: 0.40))))])))]))), Container(width: double.infinity, margin: getMargin(top: 12), decoration: AppDecoration.outlineBluegray1000f, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [CustomButton(width: 327, text: "lbl_next".tr, margin: getMargin(all: 24), shape: ButtonShape.RoundedBorder10, padding: ButtonPadding.PaddingAll20)]))])))))); } 
onTapBtntf() { Get.back(); } 
 }
