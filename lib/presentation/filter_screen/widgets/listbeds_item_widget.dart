import '../controller/filter_controller.dart';
import '../models/listbeds_item_model.dart';
import 'package:flutter/material.dart';
import 'package:housing/core/app_export.dart';

// ignore: must_be_immutable
class ListbedsItemWidget extends StatelessWidget {
  ListbedsItemWidget(this.listbedsItemModelObj);

  ListbedsItemModel listbedsItemModelObj;

  var controller = Get.find<FilterController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 8.0,
          bottom: 8.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                top: 4,
                bottom: 3,
              ),
              child: Text(
                "lbl_beds".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtManropeMedium16.copyWith(
                  letterSpacing: 0.20,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 200,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: getSize(
                      24.00,
                    ),
                    width: getSize(
                      24.00,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray300,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 15,
                      top: 4,
                      bottom: 3,
                    ),
                    child: Text(
                      "lbl_42".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtManropeExtraBold16Gray900.copyWith(
                        letterSpacing: 0.20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 15,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgPlus24X24,
                      height: getSize(
                        24.00,
                      ),
                      width: getSize(
                        24.00,
                      ),
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
