import 'package:flutter/material.dart';
import 'package:housing/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Text(
          text ?? "",
          textAlign: TextAlign.center,
          style: _setFontStyle(),
        ),
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
      case ButtonPadding.PaddingAll20:
        return getPadding(
          all: 20,
        );
      case ButtonPadding.PaddingAll14:
        return getPadding(
          all: 14,
        );
      case ButtonPadding.PaddingAll17:
        return getPadding(
          all: 17,
        );
      default:
        return getPadding(
          all: 9,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineGray300:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineBluegray5001_2:
        return ColorConstant.gray900;
      case ButtonVariant.FillGray900:
        return ColorConstant.gray900;
      case ButtonVariant.FillBlue50:
        return ColorConstant.blue50;
      case ButtonVariant.OutlineGray3001_2:
        return ColorConstant.gray50;
      case ButtonVariant.OutlineBluegray40014:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineBluegray400:
        return ColorConstant.gray50;
      case ButtonVariant.OutlineBlue500:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineBlue5001_2:
        return ColorConstant.bluegray50;
      case ButtonVariant.OutlineBluegray500:
        return null;
      default:
        return ColorConstant.blue500;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineBluegray500:
        return Border.all(
          color: ColorConstant.bluegray500,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray300:
        return Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBluegray5001_2:
        return Border.all(
          color: ColorConstant.bluegray500,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray3001_2:
        return Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBluegray400:
        return Border.all(
          color: ColorConstant.bluegray400,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBlue500:
        return Border.all(
          color: ColorConstant.blue500,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBlue5001_2:
        return Border.all(
          color: ColorConstant.blue500,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillBlue500:
      case ButtonVariant.FillGray900:
      case ButtonVariant.FillBlue50:
      case ButtonVariant.OutlineBluegray40014:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      case ButtonShape.RoundedBorder5:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
      case ButtonShape.CustomBorderTL10:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              10.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              10.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              10.00,
            ),
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            16.50,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineBluegray40014:
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
      case ButtonVariant.FillBlue500:
      case ButtonVariant.OutlineBluegray500:
      case ButtonVariant.OutlineGray300:
      case ButtonVariant.OutlineBluegray5001_2:
      case ButtonVariant.FillGray900:
      case ButtonVariant.FillBlue50:
      case ButtonVariant.OutlineGray3001_2:
      case ButtonVariant.OutlineBluegray400:
      case ButtonVariant.OutlineBlue500:
      case ButtonVariant.OutlineBlue5001_2:
        return null;
      default:
        return null;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.ManropeBold16:
        return TextStyle(
          color: ColorConstant.gray50,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.ManropeSemiBold14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.ManropeMedium14:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.ManropeBold12:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.ManropeMedium12:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.SFProDisplayMedium10:
        return TextStyle(
          color: ColorConstant.bluegray50,
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.ManropeBold16Bluegray50:
        return TextStyle(
          color: ColorConstant.bluegray50,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.ManropeBold12Gray300:
        return TextStyle(
          color: ColorConstant.gray300,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.ManropeBold12WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.ManropeBold14:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.ManropeBold16Blue500:
        return TextStyle(
          color: ColorConstant.blue500,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder10,
  RoundedBorder16,
  RoundedBorder5,
  CustomBorderTL10,
}
enum ButtonPadding {
  PaddingAll20,
  PaddingAll14,
  PaddingAll9,
  PaddingAll17,
}
enum ButtonVariant {
  FillBlue500,
  OutlineBluegray500,
  OutlineGray300,
  OutlineBluegray5001_2,
  FillGray900,
  FillBlue50,
  OutlineGray3001_2,
  OutlineBluegray40014,
  OutlineBluegray400,
  OutlineBlue500,
  OutlineBlue5001_2,
}
enum ButtonFontStyle {
  ManropeBold16WhiteA700,
  ManropeBold16,
  ManropeSemiBold14,
  ManropeMedium14,
  ManropeBold12,
  ManropeMedium12,
  SFProDisplayMedium10,
  ManropeBold16Bluegray50,
  ManropeBold12Gray300,
  ManropeBold12WhiteA700,
  ManropeBold14,
  ManropeBold16Blue500,
}
