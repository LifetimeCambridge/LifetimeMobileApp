import 'package:flutter/material.dart';

class DrawerHeader extends StatelessWidget {
  const DrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Image.asset('assets/battery_card.png'));
  }
}
