import 'package:flutter/material.dart';

class TwoLineListItemItem extends StatelessWidget {
  final Icon icon;
  final String title;
  final String subtitle;
  final Function() onTap;
  const TwoLineListItemItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      onTap: onTap,
      title: Text(title),
      subtitle: Text(subtitle),
      selected: false,
      selectedTileColor: const Color.fromARGB(255, 180, 237, 173),
      textColor: const Color.fromARGB(255, 72, 71, 58),
      selectedColor: const Color.fromARGB(255, 0, 0, 0),
    );
  }
}
