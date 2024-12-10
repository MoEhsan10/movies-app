import 'package:flutter/material.dart';
import 'package:movies/core/utils/assets_manager.dart';
import 'package:movies/core/utils/colors_manager.dart';
import 'package:movies/core/utils/strings_manager.dart';
import 'package:movies/presentation/screens/home/tabs/browse/browse.dart';
import 'package:movies/presentation/screens/home/tabs/home/home_tab.dart';
import 'package:movies/presentation/screens/home/tabs/search/search.dart';
import 'package:movies/presentation/screens/home/tabs/watch_list/watch_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  List<Widget> tabs = [
    const HomeTab(),
    const Search(),
    const Browse(),
    const WatchList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: tabs[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // iconSize: 24, // Adjust icon size
        // selectedFontSize: 12, // Font size for selected tab
        // unselectedFontSize: 12, // Font size for unselected tabs
        // backgroundColor: ColorsManager.black, // Bottom bar background
        // selectedItemColor: ColorsManager.selectedColor, // Highlight color
        // unselectedItemColor: ColorsManager.unSelectedColor, // Default tab color
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AssetsManager.homeIcon),
            ),
            label: StringsManager.home,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AssetsManager.searchIcon),
            ),
            label: StringsManager.search,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AssetsManager.browseIcon),
            ),
            label: StringsManager.browse,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AssetsManager.watchListIcon),
            ),
            label: StringsManager.watchList,
          ),
        ],
      ),
    );
  }
}
