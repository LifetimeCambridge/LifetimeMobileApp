import 'dart:io';

import 'package:battery_app/views/active_device_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../screens/main_screen.dart';
import 'drawer_navigation_item.dart';

class AppDrawer extends StatefulWidget {
  Function setActivePage;
  MainScreenPages activePage;

  AppDrawer({super.key, required this.activePage, required this.setActivePage});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  Future<void> openUrl(String urlAddress) async {
    final Uri url = Uri.parse(urlAddress);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not open: $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 220.0,
                height: 110.0,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 16, 16, 28),
                  child: Image.asset(
                    'assets/images/logo_mono.png',
                    width: 180,
                  ),
                ),
              ),
              const ActiveDeviceItem(
                deviceId: 'LC0001',
              ),
              DrawerNavigationItem(
                iconData: Icons.bluetooth,
                title: "More devices…",
                onTap: () {
                  Navigator.pop(context);
                  widget.setActivePage(MainScreenPages.moreDevices);
                },
                selected: widget.activePage == MainScreenPages.moreDevices,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                child: Divider(
                  thickness: 1.0,
                ),
              ),
              DrawerNavigationItem(
                iconData: Icons.monitor_heart_outlined,
                title: "Active tests",
                onTap: () {
                  Navigator.pop(context);
                  // sleep(const Duration(seconds:1));
                  widget.setActivePage(MainScreenPages.activeTests);
                },
                selected: widget.activePage == MainScreenPages.activeTests,
              ),
              DrawerNavigationItem(
                iconData: Icons.history,
                title: "Past tests",
                onTap: () {
                  Navigator.pop(context);
                  widget.setActivePage(MainScreenPages.pastTests);
                },
                selected: widget.activePage == MainScreenPages.pastTests,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                child: Divider(
                  thickness: 1.0,
                ),
              ),
              DrawerNavigationItem(
                iconData: Icons.help,
                title: "How to test",
                selected: false,
                onTap: () {
                  openUrl('https://www.cam.ac.uk/');
                },
              ),
              DrawerNavigationItem(
                iconData: Icons.public,
                title: "Project website",
                selected: false,
                onTap: () {
                  openUrl('https://www.cam.ac.uk/');
                },
              ),
              DrawerNavigationItem(
                iconData: Icons.description_outlined,
                title: "Documentation",
                selected: false,
                onTap: () {
                  openUrl('https://www.cam.ac.uk/');
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                child: Divider(
                  thickness: 1.0,
                ),
              ),
              DrawerNavigationItem(
                iconData: Icons.info_outline,
                title: "About the application",
                onTap: () {
                  Navigator.pop(context);
                  widget.setActivePage(MainScreenPages.about);
                },
                selected: widget.activePage == MainScreenPages.about,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
