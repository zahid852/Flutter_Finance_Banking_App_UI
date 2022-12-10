import 'package:flutter/animation.dart';

class cardModel {
  final String imagePath;
  final String balance;
  final String valid_date;
  final String card_name;
  final Color? card_color;
  final Color? smallTextColor;
  final Color? textColor;

  cardModel(
      {required this.imagePath,
      required this.balance,
      required this.valid_date,
      required this.card_name,
      required this.card_color,
      required this.smallTextColor,
      required this.textColor});
}
