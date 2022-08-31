import '../controller/add_new_property_meet_with_a_agent_controller.dart';
import '../models/dates1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:housing/core/app_export.dart';

// ignore: must_be_immutable
class Dates1ItemWidget extends StatelessWidget {
  Dates1ItemWidget(this.dates1ItemModelObj);

  Dates1ItemModel dates1ItemModelObj;

  var controller = Get.find<AddNewPropertyMeetWithAAgentController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 12,
          ),
          decoration: AppDecoration.outlineGray300.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 20,
                  top: 14,
                  right: 20,
                ),
                child: Text(
                  "lbl_monday".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManropeMedium10.copyWith(
                    letterSpacing: 0.40,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 20,
                  top: 10,
                  right: 20,
                ),
                child: Text(
                  "lbl_11".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManropeSemiBold24.copyWith(),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 20,
                  top: 10,
                  right: 20,
                  bottom: 14,
                ),
                child: Text(
                  "lbl_jul".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManropeMedium12.copyWith(
                    letterSpacing: 0.40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
