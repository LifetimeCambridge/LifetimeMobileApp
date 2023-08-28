import 'package:flutter/material.dart';

class ActiveDeviceItem extends StatelessWidget {
  final String deviceId;
  const ActiveDeviceItem({
    Key? key,
    required this.deviceId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.device_hub_outlined),
      title: const Text('Status: Connected'),
      selected: false,
      subtitle: Text('Device ID: $deviceId'),
      selectedTileColor: const Color.fromARGB(255, 180, 237, 173),
      textColor: const Color.fromARGB(255, 72, 71, 58),
      selectedColor: const Color.fromARGB(255, 0, 0, 0),
    );
  }
}
