import 'package:flutter/material.dart';
import 'package:islame_route/provider/setting_provider.dart';
import 'package:islame_route/ui/screens/home/home_screen.dart';
import 'package:islame_route/ui/utils/app_assets.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static  String routeName = "SplashScreen" ;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            provider.currentTheme == ThemeMode.light ?
          AppAssets.splash_light : AppAssets.splash_dark,
          ),
        ),
      ),
    );
  }
}
