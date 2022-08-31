import '../controller/select_virtual_app_controller.dart';
import '../models/listwhatsapp_item_model.dart';
import 'package:flutter/material.dart';
import 'package:housing/core/app_export.dart';
import 'package:housing/widgets/custom_icon_button.dart';
import 'package:housing/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class ListwhatsappItemWidget extends StatelessWidget {
  ListwhatsappItemWidget(this.listwhatsappItemModelObj);

  ListwhatsappItemModel listwhatsappItemModelObj;

  var controller = Get.find<SelectVirtualAppController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: getMargin(
          top: 8.0,
          bottom: 8.0,
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
                top: 16,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomIconButton(
                        height: 48,
                        width: 48,
                        variant: IconButtonVariant.FillGray50,
                        shape: IconButtonShape.CircleBorder24,
                        child: CommonImageView(
                          svgPath: ImageConstant.imgWhatsapp,
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 16,
                          top: 7,
                          bottom: 3,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_whatsapp".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeExtraBold16Gray900
                                  .copyWith(
                                letterSpacing: 0.20,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 7,
                                right: 8,
                              ),
                              child: Text(
                                "lbl_recommend".tr,
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
                    ],
                  ),
                  CustomIconButton(
                    height: 24,
                    width: 24,
                    margin: getMargin(
                      top: 12,
                      bottom: 12,
                    ),
                    variant: IconButtonVariant.FillBlue500,
                    shape: IconButtonShape.RoundedBorder10,
                    padding: IconButtonPadding.PaddingAll8,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgVectorBluegray5024X24,
                    ),
                  ),
                ],
              ),
            ),
            CustomTextFormField(
              width: 287,
              focusNode: FocusNode(),
              controller: controller.streetaddressController4,
              hintText: "lbl_email".tr,
              margin: getMargin(
                left: 20,
                top: 12,
                right: 20,
                bottom: 16,
              ),
              textInputAction: TextInputAction.done,
            ),
          ],
        ),
      ),
    );
  }
}
