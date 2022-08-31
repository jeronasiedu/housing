import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:housing/core/app_export.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.padding, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? padding;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(24),
        width: getHorizontalSize(44),
        toggleSize: 24,
        borderRadius: getHorizontalSize(
          12.00,
        ),
        activeColor: ColorConstant.blue500,
        activeToggleColor: ColorConstant.gray50,
        inactiveColor: ColorConstant.bluegray50,
        inactiveToggleColor: ColorConstant.gray50,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}
