import '../controller/product_details_controller.dart';
import '../models/listfive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:housing/core/app_export.dart';

// ignore: must_be_immutable
class ListfiveItemWidget extends StatelessWidget {
  ListfiveItemWidget(this.listfiveItemModelObj);

  ListfiveItemModel listfiveItemModelObj;

  var controller = Get.find<ProductDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 4.52001,
        bottom: 4.52001,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              top: 1,
            ),
            child: Text(
              "lbl_5".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtManropeBold14Gray900.copyWith(
                letterSpacing: 0.20,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 7,
              top: 2,
              bottom: 4,
            ),
            child: Container(
              height: getVerticalSize(
                8.00,
              ),
              width: getHorizontalSize(
                270.00,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray300,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    1.00,
                  ),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    1.00,
                  ),
                ),
                child: LinearProgressIndicator(
                  value: 0.4,
                  backgroundColor: ColorConstant.gray300,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    ColorConstant.yellow700,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              bottom: 1,
            ),
            child: Text(
              "lbl_60".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtReadexProRegular14.copyWith(
                height: 1.00,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
