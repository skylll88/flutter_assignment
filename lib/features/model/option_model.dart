import 'package:flutter/material.dart';

class OptionGridItem {
  OptionGridItem(
      {required this.icon,
        required this.title,
        required this.subTitle,
        required this.backgroundColor});

  final Icon icon;
  final String title;
  final String subTitle;
  final Color backgroundColor;
}

final optionItemData = [
  OptionGridItem(
    icon: const Icon(Icons.paypal),
    title: 'Pay Someone',
    subTitle: 'To wallet, Bank or mobile number',
    backgroundColor:const Color.fromARGB(255, 211, 210, 210),
  ),
  OptionGridItem(
    icon: const Icon(Icons.money),
    title: 'Request money',
    subTitle: 'Request money from OroboPay user',
    backgroundColor: const Color.fromARGB(255, 196, 223, 164),
  ),
  OptionGridItem(
    icon: const Icon(Icons.airline_seat_flat),
    title: 'Buy airtime',
    subTitle: 'Top - up or send airtime across africa',
    backgroundColor:const Color.fromARGB(255, 219, 226, 160),
  ),
  OptionGridItem(
    icon: const Icon(Icons.wallet),
    title: 'Pay bill',
    subTitle: 'Zero Transaction Fee When you pay',
    backgroundColor:const Color.fromARGB(255, 211, 210, 210),
  ),
];