import '../controller/add_new_property_details_controller.dart';
import '../models/listestimateprice_item_model.dart';
import 'package:flutter/material.dart';
import 'package:housing/core/app_export.dart';

// ignore: must_be_immutable
class ListestimatepriceItemWidget extends StatelessWidget {
  ListestimatepriceItemWidget(this.listestimatepriceItemModelObj);

  ListestimatepriceItemModel listestimatepriceItemModelObj;

  var controller = Get.find<AddNewPropertyDetailsController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        margin: getMargin(
          right: 12,
        ),
        decoration: AppDecoration.fillBluegray5099.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 12,
                  top: 19,
                  right: 12,
                ),
                child: Text(
                  "lbl_estimate_price".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManropeMedium10.copyWith(
                    letterSpacing: 0.40,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 12,
                  top: 8,
                  right: 12,
                ),
                child: Text(
                  "lbl_4_200_00".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManropeBold14Gray900.copyWith(
                    letterSpacing: 0.20,
                  ),
                ),
              ),
            ),
            Container(
              margin: getMargin(
                left: 12,
                top: 6,
                right: 12,
                bottom: 16,
              ),
              padding: getPadding(
                left: 8,
                top: 6,
                right: 8,
                bottom: 6,
              ),
              decoration: AppDecoration.txtFillRed40019.copyWith(
                borderRadius: BorderRadiusStyle.txtRoundedBorder5,
              ),
              child: Text(
                "lbl_4".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtManropeSemiBold10.copyWith(
                  letterSpacing: 0.40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
