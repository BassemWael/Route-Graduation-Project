import 'package:flutter/material.dart';
import 'package:project/tabs/browse_tab.dart';
import 'package:project/tabs/home_tab.dart';
import 'package:project/tabs/search_tab.dart';
import 'package:project/tabs/watchlist_tab.dart';
import 'package:project/utils/app_assets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = "home_screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTabIndex = 0;

  List<Widget> tabs = [
    const HomeTab(),
    const SearchTab(),
    const BrowseTab(),
    const WatchListTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomNavigation,
      body: tabs[currentTabIndex],
    );
  }

  Widget get buildBottomNavigation => Theme(
        data: Theme.of(context).copyWith(canvasColor: const Color(0xFF1A1A1A)),
        child: BottomNavigationBar(
          items: [
            buildBottomNavigationBarItem(
              "Home",
              imagePath: AppAssets.homeicon,
            ),
            buildBottomNavigationBarItem(
              "Search",
              imagePath: AppAssets.searchicon,
            ),
            buildBottomNavigationBarItem(
              "Browse",
              imagePath: AppAssets.browseicon,
            ),
            buildBottomNavigationBarItem(
              "Watchlist",
              imagePath: AppAssets.watchlisticon,
            ),
          ],
          selectedItemColor: const Color(0xFFFFBB3B),
          unselectedItemColor: const Color(0xFF707070),
          currentIndex: currentTabIndex,
          onTap: (index) {
            currentTabIndex = index;
            setState(() {});
          },
        ),
      );
  BottomNavigationBarItem buildBottomNavigationBarItem(String label,
          {String? imagePath, IconData? iconData}) =>
      BottomNavigationBarItem(
          icon: imagePath != null
              ? ImageIcon(
                  AssetImage(imagePath),
                  size: 32,
                )
              : Icon(iconData!),
          label: label);
}
