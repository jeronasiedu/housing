import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color bluegray5087 = fromHex('#87edeef1');

  static Color gray52 = fromHex('#fcfcfc');

  static Color gray5066 = fromHex('#66fbfcfc');

  static Color gray51 = fromHex('#fcfcfd');

  static Color bluegray51 = fromHex('#eeeff2');

  static Color bluegray50 = fromHex('#edeef1');

  static Color green50019 = fromHex('#1948bc65');

  static Color blue50061 = fromHex('#611786f9');

  static Color lightBlue400 = fromHex('#18acfe');

  static Color red400 = fromHex('#eb5a5a');

  static Color gray50 = fromHex('#f9f9fa');

  static Color green500 = fromHex('#48bc65');

  static Color gray30099 = fromHex('#99d8dae2');

  static Color red40019 = fromHex('#19eb5a5a');

  static Color bluegray40014 = fromHex('#14718096');

  static Color black900 = fromHex('#000000');

  static Color yellow700 = fromHex('#fabe3c');

  static Color teal900 = fromHex('#082d53');

  static Color red4000c = fromHex('#0ceb5a5a');

  static Color gray700 = fromHex('#5d5f6f');

  static Color bluegray1000f = fromHex('#0fc5c7d3');

  static Color bluegray5099 = fromHex('#99edeef1');

  static Color blue700 = fromHex('#0163e0');

  static Color blue500 = fromHex('#1786f9');

  static Color gray900 = fromHex('#131416');

  static Color gray300 = fromHex('#d8dae2');

  static Color blue50 = fromHex('#d1e7fe');

  static Color bluegray900 = fromHex('#29303c');

  static Color bluegray500 = fromHex('#74778b');

  static Color gray9007e = fromHex('#7e131416');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
