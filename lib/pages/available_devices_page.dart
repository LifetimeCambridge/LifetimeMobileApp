import 'package:flutter/material.dart';
import '../views/two_line_list_item.dart';

class AvailableDevicesPage extends StatefulWidget {
  const AvailableDevicesPage({super.key});

  @override
  State<AvailableDevicesPage> createState() => _AvailableDevicesPageState();
}

class _AvailableDevicesPageState extends State<AvailableDevicesPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TwoLineListItemItem(
          icon: const Icon(Icons.device_hub_outlined),
          title: 'Device ID: LC0001',
          subtitle: 'Signal strength: High',
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Connecting to LC0001...'),
            ));
          },
        ),
        TwoLineListItemItem(
          icon: const Icon(Icons.device_hub_outlined),
          title: 'Device ID: LC0002',
          subtitle: 'Signal strength: High',
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Connecting to LC0002...'),
            ));
          },
        ),
        TwoLineListItemItem(
          icon: const Icon(Icons.device_hub_outlined),
          title: 'Device ID: LC0003',
          subtitle: 'Signal strength: Medium',
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Connecting to LC0003...'),
            ));
          },
        ),
      ],
    );
  }
}
