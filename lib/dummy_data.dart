import 'package:finance_banking_app/models/acount.dart';
import 'package:finance_banking_app/models/card_model.dart';
import 'package:finance_banking_app/models/transaction_model.dart';
import 'package:flutter/material.dart';

class dummy_data {
  static List<cardModel> card_section_list = [
    cardModel(
        imagePath: 'assets/master.svg',
        balance: '6,532.12',
        valid_date: '12/11/2023',
        card_name: 'Master Card',
        card_color: Colors.grey[200],
        smallTextColor: Colors.black38,
        textColor: Colors.black),
    cardModel(
        imagePath: 'assets/p2.png',
        balance: '4,003.67',
        valid_date: '08/01/2024',
        card_name: 'PayPal',
        card_color: Colors.blue[300],
        smallTextColor: Colors.white70,
        textColor: Colors.white)
  ];
  static List<transactions> transaction_section_list = [
    transactions(
        icon: Icons.arrow_back,
        type: 'Income',
        amount: 'Rs 20000.00+',
        transfer: 'Transfer from',
        person: 'Bilal Yusuf',
        date: '06/02/2022',
        imagePath: 'assets/master.svg',
        color: Colors.green),
    transactions(
        icon: Icons.arrow_forward,
        type: 'Outcome',
        amount: 'Rs 1020.00-',
        transfer: 'Transfer to',
        person: 'Asif Ali',
        date: '13/04/2022',
        imagePath: 'assets/p2.png',
        color: Colors.red),
    transactions(
        icon: Icons.arrow_back,
        type: 'Income',
        amount: 'Rs 35000.00+',
        transfer: 'Transfer from',
        person: 'Faisal Arif',
        date: '02/10/2022',
        imagePath: 'assets/master.svg',
        color: Colors.green),
  ];
  static List<account> acount_section_list = [
    account(
        imagePath: 'assets/wal1.jpg',
        name: 'Zahid Yousaf',
        type: 'GoPay',
        ac_no: '+74********34521'),
    account(
        imagePath: 'assets/wal2.png',
        name: 'Basit',
        type: 'Ovo',
        ac_no: '+12********65218'),
    account(
        imagePath: 'assets/wal3.jpg',
        name: 'Aftab Ahsan',
        type: 'GoPay',
        ac_no: '+65********325429')
  ];
}
