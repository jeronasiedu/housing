import '../controller/confirm_request_bottom_sheet_controller.dart';
import '../models/listhome1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:housing/core/app_export.dart';
import 'package:housing/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Listhome1ItemWidget extends StatelessWidget {
  Listhome1ItemWidget(this.listhome1ItemModelObj);

  Listhome1ItemModel listhome1ItemModelObj;

  var controller = Get.find<ConfirmRequestBottomSheetController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 6.5,
          bottom: 6.5,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              decoration: AppDecoration.outlineGray300.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomIconButton(
                    height: 40,
                    width: 40,
                    margin: getMargin(
                      left: 13,
                      top: 12,
                      bottom: 12,
                    ),
                    variant: IconButtonVariant.FillBluegray50,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgHome44X44,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 12,
                      top: 16,
                      right: 13,
                      bottom: 15,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_home_closed".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtManropeMedium12.copyWith(
                            letterSpacing: 0.40,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 6,
                            right: 10,
                          ),
                          child: Text(
                            "lbl_25".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtManropeExtraBold14Gray900.copyWith(
                              letterSpacing: 0.20,
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
                left: 13,
              ),
              decoration: AppDecoration.outlineGray300.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomIconButton(
                    height: 40,
                    width: 40,
                    margin: getMargin(
                      left: 13,
                      top: 12,
                      bottom: 12,
                    ),
                    variant: IconButtonVariant.FillBluegray50,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgTrash,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 12,
                      top: 18,
                      right: 25,
                      bottom: 12,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_experience".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtManropeMedium12.copyWith(
                            letterSpacing: 0.40,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 5,
                            right: 9,
                          ),
                          child: Text(
                            "lbl_5_years".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtManropeExtraBold14Gray900.copyWith(
                              letterSpacing: 0.20,
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
