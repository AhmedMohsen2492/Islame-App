import 'package:flutter/material.dart';
import 'package:islame_route/ui/utils/app_colors.dart';
import '../../../utils/app_theme.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  bool arSwitchValue = false;
  bool darkModeSwitchValue = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Settings",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              Text(
                "Enable arabic(العربيه)",
                style: TextStyle(
                  color: AppColors.accent,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Spacer(),
              Switch(
                value: arSwitchValue,
                onChanged: (newValue)
                {
                  setState(() {});
                  arSwitchValue = newValue;
                },
                activeColor: AppColors.primary,
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text(
                "Dark mode",
                style: TextStyle(
                  color: AppColors.accent,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Spacer(),
              Switch(
                value: darkModeSwitchValue,
                onChanged: (newValue)
                {
                  setState(() {});
                  darkModeSwitchValue = newValue;
                },
                activeColor: AppColors.primary,
              ),
            ],
          ),
        ],
      ),
    );
  }


}
