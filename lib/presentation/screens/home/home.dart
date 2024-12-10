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

  int currentIndex=0;
  List<Widget> tabs=[
    HomeTab(),
    Search(),
    Browse(),
    WatchList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: buildBottomNavigationBar(),
      body: tabs[currentIndex],
    );
  }

  buildBottomNavigationBar() =>BottomAppBar(
    child: BottomNavigationBar(
      currentIndex: currentIndex,
        onTap: (index) {
        currentIndex=index;
          setState(() {

          });
        },
        backgroundColor: ColorsManager.black,
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AssetsManager.homeIcon)),
              label: StringsManager.home),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AssetsManager.searchIcon)),
              label: StringsManager.search),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AssetsManager.browseIcon)),
              label: StringsManager.browse),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage(AssetsManager.watchListIcon)),
              label: StringsManager.watchList),
        ]),
  );
}
