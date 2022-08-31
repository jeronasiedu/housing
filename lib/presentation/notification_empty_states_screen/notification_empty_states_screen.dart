import 'controller/notification_empty_states_controller.dart';import 'package:flutter/material.dart';import 'package:housing/core/app_export.dart';import 'package:housing/widgets/custom_button.dart';import 'package:housing/widgets/custom_icon_button.dart';class NotificationEmptyStatesScreen extends GetWidget<NotificationEmptyStatesController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray50, body: Column(children: [Expanded(child: Container(width: size.width, child: SingleChildScrollView(child: Container(margin: getMargin(top: 8), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [Align(alignment: Alignment.centerLeft, child: Container(margin: getMargin(left: 24, right: 24), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Container(width: size.width, margin: getMargin(right: 10), child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [CustomIconButton(height: 40, width: 40, padding: IconButtonPadding.PaddingAll14, onTap: () {onTapBtntf();}, child: CommonImageView(svgPath: ImageConstant.imgArrowleft)), Padding(padding: getPadding(left: 68, top: 11, bottom: 10), child: Text("lbl_notification".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeExtraBold18.copyWith(letterSpacing: 0.20)))]))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 18, top: 113, right: 18), child: CommonImageView(svgPath: ImageConstant.imgMailnotificati, height: getVerticalSize(177.00), width: getHorizontalSize(217.00)))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 44, top: 57, right: 44), child: Text("msg_no_notification".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeExtraBold20.copyWith(letterSpacing: 0.20)))), Align(alignment: Alignment.centerRight, child: Container(width: getHorizontalSize(290.00), margin: getMargin(left: 10, top: 17), child: Text("msg_no_notification2".tr, maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtManrope16.copyWith(letterSpacing: 0.30)))), CustomButton(width: 218, text: "msg_notifications_s".tr, margin: getMargin(left: 36, top: 24, right: 36), shape: ButtonShape.RoundedBorder10, padding: ButtonPadding.PaddingAll14, alignment: Alignment.centerRight)])))]))))), Container(decoration: BoxDecoration(color: ColorConstant.whiteA700, boxShadow: [BoxShadow(color: ColorConstant.bluegray1000f, spreadRadius: getHorizontalSize(2.00), blurRadius: getHorizontalSize(2.00), offset: Offset(0, -8))]), child: Padding(padding: getPadding(top: 16, bottom: 16), child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Container(margin: getMargin(top: 2, bottom: 2), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 4, right: 4), child: CommonImageView(svgPath: ImageConstant.imgHome, height: getVerticalSize(20.00), width: getHorizontalSize(19.00)))), Padding(padding: getPadding(top: 8), child: Text("lbl_home".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeMedium10Blue500.copyWith(letterSpacing: 0.40)))])), Container(margin: getMargin(top: 2), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 13, right: 13), child: CommonImageView(svgPath: ImageConstant.imgCheckmark, height: getVerticalSize(18.00), width: getHorizontalSize(20.00))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(top: 11), child: Text("lbl_message".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeMedium10.copyWith(letterSpacing: 0.40))))])), Container(margin: getMargin(top: 2, bottom: 2), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 14, right: 14), child: CommonImageView(svgPath: ImageConstant.imgLocation20X17, height: getVerticalSize(20.00), width: getHorizontalSize(17.00))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(top: 8), child: Text("lbl_discover".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeMedium10.copyWith(letterSpacing: 0.40))))])), Container(child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 11, top: 1, right: 11), child: CommonImageView(svgPath: ImageConstant.imgHome21X21, height: getSize(21.00), width: getSize(21.00)))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(top: 9), child: Text("lbl_my_home".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeMedium10.copyWith(letterSpacing: 0.40))))])), Container(margin: getMargin(top: 2, bottom: 2), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 7, right: 7), child: CommonImageView(svgPath: ImageConstant.imgUser1, height: getVerticalSize(20.00), width: getHorizontalSize(16.00))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(top: 8), child: Text("lbl_profile".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtManropeMedium10.copyWith(letterSpacing: 0.40))))]))])))]))); } 
onTapBtntf() { Get.back(); } 
 }
