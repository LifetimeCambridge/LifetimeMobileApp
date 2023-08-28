import 'package:flutter/material.dart';
import '../views/two_line_list_item.dart';

class PastTestsPage extends StatefulWidget {
  const PastTestsPage({super.key});

  @override
  State<PastTestsPage> createState() => _PastTestsPageState();
}

class _PastTestsPageState extends State<PastTestsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TwoLineListItemItem(
          icon: const Icon(
            Icons.battery_2_bar,
            color: Color.fromARGB(255, 255, 80, 63),
          ),
          title: 'Cell 1 health: 21% • Capacity: 546 mAh',
          subtitle: 'Test finished today at 11:27',
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Connecting to LC0001...'),
            ));
          },
        ),
        TwoLineListItemItem(
          icon: const Icon(
            Icons.battery_3_bar,
            color: Color.fromARGB(255, 255, 180, 23),
          ),
          title: 'Cell 2 health: 75% • Capacity: 1950 mAh',
          subtitle: 'Test finished today at 11:27',
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Connecting to LC0001...'),
            ));
          },
        ),
        TwoLineListItemItem(
          icon: const Icon(
            Icons.battery_6_bar,
            color: Color.fromARGB(255, 68, 175, 61),
          ),
          title: 'Cell 3 health: 81% • Capacity: 2106 mAh',
          subtitle: 'Test finished today at 11:27',
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Connecting to LC0001...'),
            ));
          },
        ),
        TwoLineListItemItem(
          icon: const Icon(
            Icons.battery_6_bar,
            color: Color.fromARGB(255, 68, 175, 61),
          ),
          title: 'Cell 4 health: 87% • Capacity: 2262 mAh',
          subtitle: 'Test finished today at 11:27',
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Connecting to LC0001...'),
            ));
          },
        ),
      ],
    );
  }
}
