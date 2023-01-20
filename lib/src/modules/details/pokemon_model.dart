import 'package:flutter/material.dart';

class PokemonStatsModel {
  final String id;
  final String name;
  final String type1Text;
  final String type2Text;
  final Color type1Color;
  final Color type2Color;
  final double weight;
  final double height;
  final String atk1;
  final String atk2;
  final String description;
  final int hpSts;
  final int atkSts;
  final int defSts;
  final int satkSts;
  final int sdefSts;
  final int spdSts;
  final String img;
  final Color bgColor;

  PokemonStatsModel({
    required this.id,
    required this.name,
    required this.type1Text,
    required this.type2Text,
    required String type1Color,
    required String type2Color,
    required this.weight,
    required this.height,
    required this.atk1,
    required this.atk2,
    required this.description,
    required this.hpSts,
    required this.atkSts,
    required this.defSts,
    required this.satkSts,
    required this.sdefSts,
    required this.spdSts,
    required this.img,
    required String bgColor,
  })  : bgColor = _toColor(bgColor),
        type1Color = _toColor(type1Color),
        type2Color = _toColor(type2Color);

  static _toColor(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
