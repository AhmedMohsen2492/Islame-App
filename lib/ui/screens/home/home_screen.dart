import 'package:flutter/material.dart';
import 'package:islame_route/ui/screens/home/tabs/ahadeth_tab.dart';
import 'package:islame_route/ui/screens/home/tabs/quran_tab.dart';
import 'package:islame_route/ui/screens/home/tabs/radio_tab.dart';
import 'package:islame_route/ui/screens/home/tabs/sebha_tab.dart';
import 'package:islame_route/ui/screens/home/tabs/settings.dart';
import 'package:islame_route/ui/utils/app_assets.dart';
import 'package:islame_route/ui/utils/app_colors.dart';
import 'package:islame_route/ui/utils/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../../../provider/setting_provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen" ;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late SettingProvider provider ;
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
    provider = Provider.of(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            provider.currentTheme == ThemeMode.light ?
              AppAssets.background : AppAssets.background_dark,
          ),
        ),
      ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.islami ,
            ),
          ),
          bottomNavigationBar: buildBottomNavigationBar(),
          body: body[selectedIndex],
        ),
    );
  }

  Widget buildBottomNavigationBar () => Theme(
    data: provider.currentTheme == ThemeMode.light  ?
    Theme.of(context).copyWith(canvasColor: AppColors.primary) :
    Theme.of(context).copyWith(canvasColor: AppColors.primary_dark),
    child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.09,
      child: BottomNavigationBar(
        iconSize: MediaQuery.of(context).size.height*0.03,
        selectedIconTheme: IconThemeData(
          size: MediaQuery.of(context).size.height*0.04,
        ),
        onTap: onItemTapped,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(AppAssets.icQuran),
              ),
              label: AppLocalizations.of(context)!.quran ,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AppAssets.icAhadeth),
            ),
            label: AppLocalizations.of(context)!.ahadeth ,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AppAssets.icSebha),
            ),
            label: AppLocalizations.of(context)!.sebha ,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(AppAssets.icRadio),
            ),
            label: AppLocalizations.of(context)!.radio ,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings
            ),
            label: AppLocalizations.of(context)!.settings ,
          ),
        ],
      ),
    ),
  );

  void onItemTapped(int index){
    setState(() {});
    selectedIndex = index ;
    print(MediaQuery.of(context).size.height);
  }
}
