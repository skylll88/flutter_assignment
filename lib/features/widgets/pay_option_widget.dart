import 'package:assignment2/features/model/option_model.dart';
import 'package:flutter/material.dart';

class PayOptionWidget extends StatelessWidget {
  const PayOptionWidget({super.key, required this.optionItem});
final OptionGridItem optionItem;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        color: optionItem.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              optionItem.icon,
              const SizedBox(height: 14),
              Text(
                optionItem.title,
                style:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 14),
              Text(
                optionItem.subTitle,
                style: const TextStyle(fontSize: 12,color: Colors.black54, height: 1.2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}