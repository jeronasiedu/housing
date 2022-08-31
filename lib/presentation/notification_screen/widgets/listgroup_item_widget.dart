import '../controller/notification_controller.dart';
import '../models/listgroup_item_model.dart';
import 'package:flutter/material.dart';
import 'package:housing/core/app_export.dart';
import 'package:housing/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListgroupItemWidget extends StatelessWidget {
  ListgroupItemWidget(this.listgroupItemModelObj);

  ListgroupItemModel listgroupItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 8.0,
        bottom: 8.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomIconButton(
            height: 44,
            width: 44,
            margin: getMargin(
              top: 1,
              bottom: 16,
            ),
            variant: IconButtonVariant.FillBluegray50,
            shape: IconButtonShape.RoundedBorder10,
            child: CommonImageView(
              svgPath: ImageConstant.imgGroup,
            ),
          ),
          Container(
            margin: getMargin(
              left: 16,
              top: 3,
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
                    "msg_the_house_with".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtManropeBold14Gray900.copyWith(
                      letterSpacing: 0.20,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    203.00,
                  ),
                  margin: getMargin(
                    top: 12,
                  ),
                  child: Text(
                    "msg_there_are_sever".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtManrope12.copyWith(
                      letterSpacing: 0.40,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: getMargin(
              left: 25,
              top: 7,
              bottom: 14,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_4_days".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtManrope12.copyWith(
                      letterSpacing: 0.40,
                    ),
                  ),
                ),
                Container(
                  height: getSize(
                    8.00,
                  ),
                  width: getSize(
                    8.00,
                  ),
                  margin: getMargin(
                    left: 10,
                    top: 19,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.blue500,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        4.00,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
