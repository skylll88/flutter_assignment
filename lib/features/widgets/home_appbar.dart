import 'package:flutter/material.dart';

class HomeAppBarDesign extends StatelessWidget {
  const HomeAppBarDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
        IconButton(
        onPressed: (){},
    icon: const Icon( Icons.notifications_none_rounded,
    color: Colors.black, size: 40),
    ),
    Positioned(
    right: 11,
    top: 11,
    child: Container(
    padding: const EdgeInsets.all(2),
    decoration: BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.circular(7),
    ),
    constraints: const BoxConstraints(
    minWidth: 14,
    minHeight: 14,
    ),
    ),
    ),]
    );
  }
}
