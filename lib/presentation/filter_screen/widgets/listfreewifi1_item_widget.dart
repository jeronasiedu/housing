import '../controller/filter_controller.dart';
import '../models/listfreewifi1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:housing/core/app_export.dart';

// ignore: must_be_immutable
class Listfreewifi1ItemWidget extends StatelessWidget {
  Listfreewifi1ItemWidget(this.listfreewifi1ItemModelObj);

  Listfreewifi1ItemModel listfreewifi1ItemModelObj;

  var controller = Get.find<FilterController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 4.0,
        right: 4,
        bottom: 4.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: getPadding(
              left: 20,
              top: 12,
              right: 20,
              bottom: 10,
            ),
            decoration: AppDecoration.txtOutlineBluegray400.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder18,
            ),
            child: Text(
              "lbl_free_wifi".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtManropeMedium14Gray900.copyWith(),
            ),
          ),
          Container(
            margin: getMargin(
              left: 8,
            ),
            padding: getPadding(
              left: 20,
              top: 11,
              right: 20,
              bottom: 11,
            ),
            decoration: AppDecoration.txtOutlineBluegray400.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder18,
            ),
            child: Text(
              "lbl_pool".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtManropeMedium14Gray900.copyWith(),
            ),
          ),
          Container(
            margin: getMargin(
              left: 8,
            ),
            padding: getPadding(
              left: 20,
              top: 13,
              right: 20,
              bottom: 8,
            ),
            decoration: AppDecoration.txtOutlineBluegray400.copyWith(
              borderRadius: BorderRadiusStyle.txtRoundedBorder18,
            ),
            child: Text(
              "lbl_apartment".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtManropeMedium14Gray900.copyWith(),
            ),
          ),
        ],
      ),
    );
  }
}
