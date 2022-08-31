import 'package:flutter/material.dart';
import 'package:housing/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.height,
      this.width,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? height;

  double? width;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        constraints: BoxConstraints(
          minHeight: getSize(height ?? 0),
          minWidth: getSize(width ?? 0),
        ),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll14:
        return getPadding(
          all: 14,
        );
      case IconButtonPadding.PaddingAll3:
        return getPadding(
          all: 3,
        );
      case IconButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      default:
        return getPadding(
          all: 11,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.OutlineBluegray50:
        return ColorConstant.whiteA700;
      case IconButtonVariant.OutlineBluegray501_2:
        return ColorConstant.blue500;
      case IconButtonVariant.FillBluegray50:
        return ColorConstant.bluegray50;
      case IconButtonVariant.FillBlue500:
        return ColorConstant.blue500;
      case IconButtonVariant.OutlineGray3001_2:
        return ColorConstant.gray51;
      case IconButtonVariant.OutlineBluegray40014:
        return ColorConstant.whiteA700;
      case IconButtonVariant.OutlineGray5066:
        return ColorConstant.whiteA700;
      case IconButtonVariant.OutlineGray50:
        return ColorConstant.blue500;
      case IconButtonVariant.FillGray50:
        return ColorConstant.gray50;
      case IconButtonVariant.FillGray900:
        return ColorConstant.gray900;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineBluegray50:
        return Border.all(
          color: ColorConstant.bluegray50,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.OutlineBluegray501_2:
        return Border.all(
          color: ColorConstant.bluegray50,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.OutlineGray3001_2:
        return Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.OutlineGray5066:
        return Border.all(
          color: ColorConstant.gray5066,
          width: getHorizontalSize(
            4.00,
          ),
        );
      case IconButtonVariant.OutlineGray50:
        return Border.all(
          color: ColorConstant.gray50,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.FillBluegray50:
      case IconButtonVariant.FillBlue500:
      case IconButtonVariant.OutlineBluegray40014:
      case IconButtonVariant.FillGray50:
      case IconButtonVariant.FillGray900:
        return null;
      default:
        return Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      case IconButtonShape.CircleBorder6:
        return BorderRadius.circular(
          getHorizontalSize(
            6.27,
          ),
        );
      case IconButtonShape.CircleBorder24:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineBluegray40014:
        return [
          BoxShadow(
            color: ColorConstant.bluegray40014,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          )
        ];
      case IconButtonVariant.OutlineGray300:
      case IconButtonVariant.OutlineBluegray50:
      case IconButtonVariant.OutlineBluegray501_2:
      case IconButtonVariant.FillBluegray50:
      case IconButtonVariant.FillBlue500:
      case IconButtonVariant.OutlineGray3001_2:
      case IconButtonVariant.OutlineGray5066:
      case IconButtonVariant.OutlineGray50:
      case IconButtonVariant.FillGray50:
      case IconButtonVariant.FillGray900:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  CircleBorder20,
  RoundedBorder10,
  CircleBorder6,
  CircleBorder24,
}
enum IconButtonPadding {
  PaddingAll14,
  PaddingAll11,
  PaddingAll3,
  PaddingAll8,
}
enum IconButtonVariant {
  OutlineGray300,
  OutlineBluegray50,
  OutlineBluegray501_2,
  FillBluegray50,
  FillBlue500,
  OutlineGray3001_2,
  OutlineBluegray40014,
  OutlineGray5066,
  OutlineGray50,
  FillGray50,
  FillGray900,
}
