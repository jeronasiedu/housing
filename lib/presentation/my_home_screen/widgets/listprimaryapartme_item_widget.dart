import '../controller/my_home_controller.dart';
import '../models/listprimaryapartme_item_model.dart';
import 'package:flutter/material.dart';
import 'package:housing/core/app_export.dart';

// ignore: must_be_immutable
class ListprimaryapartmeItemWidget extends StatelessWidget {
  ListprimaryapartmeItemWidget(this.listprimaryapartmeItemModelObj);

  ListprimaryapartmeItemModel listprimaryapartmeItemModelObj;

  var controller = Get.find<MyHomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 8.0,
        bottom: 8.0,
      ),
      decoration: AppDecoration.outlineGray30012.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                getHorizontalSize(
                  10.00,
                ),
              ),
              bottomLeft: Radius.circular(
                getHorizontalSize(
                  10.00,
                ),
              ),
            ),
            child: CommonImageView(
              imagePath: ImageConstant.imgImage,
              height: getVerticalSize(
                109.00,
              ),
              width: getHorizontalSize(
                102.00,
              ),
            ),
          ),
          Container(
            margin: getMargin(
              left: 16,
              top: 18,
              right: 59,
              bottom: 15,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "msg_primary_apartme".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtManropeBold16.copyWith(
                    letterSpacing: 0.20,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: getHorizontalSize(
                      148.00,
                    ),
                    margin: getMargin(
                      top: 8,
                      right: 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 4,
                            bottom: 4,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgLock,
                            height: getSize(
                              12.00,
                            ),
                            width: getSize(
                              12.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 4,
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_3".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtManropeMedium14.copyWith(),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 5,
                            bottom: 5,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgPrinter,
                            height: getVerticalSize(
                              10.00,
                            ),
                            width: getHorizontalSize(
                              13.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 3,
                          ),
                          child: Text(
                            "lbl_2".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtManropeMedium14.copyWith(),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 3,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgVector,
                            height: getSize(
                              13.00,
                            ),
                            width: getSize(
                              13.00,
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            top: 4,
                            bottom: 2,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_1_880".tr,
                                  style: TextStyle(
                                    color: ColorConstant.bluegray500,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: ' ',
                                  style: TextStyle(
                                    color: ColorConstant.bluegray500,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 0.20,
                                  ),
                                ),
                                TextSpan(
                                  text: "lbl_ft".tr,
                                  style: TextStyle(
                                    color: ColorConstant.bluegray500,
                                    fontSize: getFontSize(
                                      10,
                                    ),
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.40,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 12,
                    right: 10,
                  ),
                  child: Text(
                    "lbl_1_600_1_800".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtManropeExtraBold16.copyWith(
                      letterSpacing: 0.20,
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
