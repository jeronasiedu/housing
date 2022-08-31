import '../controller/message_controller.dart';
import '../models/listimg2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:housing/core/app_export.dart';

// ignore: must_be_immutable
class Listimg2ItemWidget extends StatelessWidget {
  Listimg2ItemWidget(this.listimg2ItemModelObj);

  Listimg2ItemModel listimg2ItemModelObj;

  var controller = Get.find<MessageController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 16.5,
        bottom: 16.5,
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: getSize(
                    48.00,
                  ),
                  width: getSize(
                    48.00,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              24.00,
                            ),
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgImg48X48,
                            height: getSize(
                              48.00,
                            ),
                            width: getSize(
                              48.00,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: getSize(
                            12.00,
                          ),
                          width: getSize(
                            12.00,
                          ),
                          margin: getMargin(
                            left: 10,
                            top: 10,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.green500,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                6.00,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.gray50,
                              width: getHorizontalSize(
                                1.50,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 16,
                    top: 1,
                    bottom: 1,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          right: 7,
                        ),
                        child: Text(
                          "lbl_wade_warren".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtManropeBold16.copyWith(
                            letterSpacing: 0.20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 15,
                        ),
                        child: Text(
                          "msg_oh_hello_willam".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtManropeMedium14.copyWith(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 117,
              top: 5,
              bottom: 33,
            ),
            child: Text(
              "lbl_23_15".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtManropeRegular14.copyWith(),
            ),
          ),
        ],
      ),
    );
  }
}
