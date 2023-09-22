import 'package:flutter/material.dart';
import 'package:islame_route/ui/screens/home/tabs/ahadeth_tab.dart';
import 'package:islame_route/ui/screens/home/tabs/quran_tab.dart';
import 'package:islame_route/ui/screens/home/tabs/radio_tab.dart';
import 'package:islame_route/ui/screens/home/tabs/sebha_tab.dart';
import 'package:islame_route/ui/screens/home/tabs/settings.dart';
import 'package:islame_route/ui/utils/app_assets.dart';
import 'package:islame_route/ui/utils/app_colors.dart';
import 'package:islame_route/ui/utils/app_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen" ;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0;
  List<Widget> body = [
    QuranTab(),
    AhadethTab(),
    SebhaTab(),
    RadioTab(),
    SettingScreen(),
  ] ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AppAssets.background),
        ),
      ),
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          appBar: AppBar(
            title: Text(
              "Islami" ,
              style: AppTheme.appBarTitleTextStyle,
            ),
            backgroundColor: AppColors.transparent,
            elevation: 0,
            centerTitle: true,
          ),
          bottomNavigationBar: buildBottomNavigationBar(),
          body: body[selectedIndex],
        ),
    );
  }

  Widget buildBottomNavigationBar () => Theme(
    data: ThemeData(
      canvasColor: AppColors.primary,
    ),
    child: BottomNavigationBar(
      onTap: onItemTapped,
      currentIndex: selectedIndex,
      selectedItemColor: AppColors.accent,
      iconSize: 30,
      items: [
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AppAssets.icQuran),
            ),
            label: "Quran" ,
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(AppAssets.icAhadeth),
          ),
          label: "Ahadeth" ,
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(AppAssets.icSebha),
          ),
          label: "Sebha" ,
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(AppAssets.icRadio),
          ),
          label: "Radio" ,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings
          ),
          label: "Setting" ,
        ),
      ],
    ),
  );

  void onItemTapped(int index){
    setState(() {});
    selectedIndex = index ;
  }
}
