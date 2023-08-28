import 'package:flutter/material.dart';

class DrawerNavigationItem extends StatelessWidget {
  final IconData iconData;
  final String title;
  final bool selected;
  final Function() onTap;
  const DrawerNavigationItem({
    Key? key,
    required this.iconData,
    required this.title,
    required this.selected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      leading: Icon(iconData),
      onTap: onTap,
      title: Text(title),
      selectedTileColor: const Color.fromARGB(255, 180, 237, 173),
      selected: selected,
      textColor: const Color.fromARGB(255, 72, 71, 58),
      selectedColor: const Color.fromARGB(255, 0, 0, 0),
    );
  }
}
