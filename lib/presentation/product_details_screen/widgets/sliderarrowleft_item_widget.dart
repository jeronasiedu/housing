import '../controller/product_details_controller.dart';
import '../models/sliderarrowleft_item_model.dart';
import 'package:flutter/material.dart';
import 'package:housing/core/app_export.dart';
import 'package:housing/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SliderarrowleftItemWidget extends StatelessWidget {
  SliderarrowleftItemWidget(this.sliderarrowleftItemModelObj,
      {this.onTapBtntf});

  SliderarrowleftItemModel sliderarrowleftItemModelObj;

  var controller = Get.find<ProductDetailsController>();

  VoidCallback? onTapBtntf;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: getSize(
          343.00,
        ),
        width: getSize(
          343.00,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    20.00,
                  ),
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgImage343X343,
                  height: getSize(
                    343.00,
                  ),
                  width: getSize(
                    343.00,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: getMargin(
                  left: 24,
                  top: 24,
                  right: 24,
                  bottom: 37,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomIconButton(
                          height: 40,
                          width: 40,
                          variant: IconButtonVariant.OutlineGray5066,
                          padding: IconButtonPadding.PaddingAll14,
                          onTap: () {
                            onTapBtntf!();
                          },
                          child: CommonImageView(
                            svgPath: ImageConstant.imgArrowleft,
                          ),
                        ),
                        CustomIconButton(
                          height: 40,
                          width: 40,
                          variant: IconButtonVariant.OutlineGray5066,
                          child: CommonImageView(
                            svgPath: ImageConstant.imgCall1,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        top: 195,
                        right: 10,
                      ),
                      child: Text(
                        "msg_primary_apartme".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtManropeExtraBold24WhiteA700.copyWith(),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 8,
                        right: 10,
                      ),
                      child: Text(
                        "msg_701_ocean_avenu".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtManropeMedium14Gray300.copyWith(),
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
