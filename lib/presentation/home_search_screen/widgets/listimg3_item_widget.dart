import '../controller/home_search_controller.dart';
import '../models/listimg3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:housing/core/app_export.dart';

// ignore: must_be_immutable
class Listimg3ItemWidget extends StatelessWidget {
  Listimg3ItemWidget(this.listimg3ItemModelObj);

  Listimg3ItemModel listimg3ItemModelObj;

  var controller = Get.find<HomeSearchController>();

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
          Padding(
            padding: getPadding(
              top: 2,
              bottom: 2,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  5.00,
                ),
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgImg40X40,
                height: getSize(
                  40.00,
                ),
                width: getSize(
                  40.00,
                ),
              ),
            ),
          ),
          Container(
            margin: getMargin(
              left: 16,
              top: 5,
              right: 112,
              bottom: 3,
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
                    "msg_mighty_cinco_fa".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtManropeBold14Gray900.copyWith(
                      letterSpacing: 0.20,
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(
                    top: 5,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_360".tr,
                          style: TextStyle(
                            color: ColorConstant.blue500,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.40,
                          ),
                        ),
                        TextSpan(
                          text: "lbl_s".tr,
                          style: TextStyle(
                            color: ColorConstant.bluegray500,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: "msg_tillwater_rd_tr".tr,
                          style: TextStyle(
                            color: ColorConstant.bluegray500,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w400,
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
        ],
      ),
    );
  }
}
