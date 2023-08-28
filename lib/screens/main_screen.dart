import 'package:battery_app/pages/available_devices_page.dart';
import 'package:flutter/material.dart';
import 'package:battery_app/views/app_drawer.dart';
import '../pages/active_tests_page.dart';
import '../pages/past_tests_page.dart';

enum MainScreenPages {
  moreDevices,
  activeTests,
  pastTests,
  about,
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static const appBarTitles = <String>[
    'Available devices',
    'Active tests',
    'Past tests',
    'About the application',
  ];

  static String getAppBarTitle(MainScreenPages page) {
    if (page.index >= 0 && page.index < appBarTitles.length) {
      return appBarTitles[page.index];
    } else {
      throw RangeError('Invalid array index: ${page.index}');
    }
  }

  List<Widget> getAppBarActions(MainScreenPages page) {
    if (page == MainScreenPages.activeTests ||
        page == MainScreenPages.pastTests) {
      return <Widget>[
        IconButton(
          icon: const Icon(
            Icons.upload,
            color: Color.fromARGB(255, 72, 71, 58),
          ),
          onPressed: () {
            // Do something
          },
        )
      ];
    } else {
      return <Widget>[];
    }
  }

  MainScreenPages activePage = MainScreenPages.activeTests;

  void setActivePage(MainScreenPages newActivePage) {
    setState(() {
      activePage = newActivePage;
    });
  }

  Widget getPageContent(MainScreenPages page) {
    switch (page) {
      case MainScreenPages.moreDevices:
        return const AvailableDevicesPage();
      case MainScreenPages.activeTests:
        return const ActiveTestsPage();
      case MainScreenPages.pastTests:
        return const PastTestsPage();
      default:
        return const PastTestsPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(activePage: activePage, setActivePage: setActivePage),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(getAppBarTitle(activePage)),
        actions: getAppBarActions(activePage),
      ),
      body: Center(
        child: getPageContent(activePage),
      ),
    );
  }
}
