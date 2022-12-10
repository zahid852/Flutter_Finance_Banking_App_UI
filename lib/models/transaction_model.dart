import 'package:flutter/material.dart';

class transactions {
  final IconData icon;
  final String type;
  final String amount;
  final String transfer;
  final String person;
  final String date;
  final String imagePath;
  final Color color;

  transactions(
      {required this.icon,
      required this.type,
      required this.amount,
      required this.transfer,
      required this.person,
      required this.date,
      required this.imagePath,
      required this.color});
}
