import 'package:flutter/material.dart';
import 'package:islame_route/provider/setting_provider.dart';
import 'package:islame_route/ui/utils/app_colors.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.settings,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                "Enable arabic(العربيه)",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const Spacer(),
              Switch(
                value: SettingProvider.arSwitchValue,
                onChanged: (newValue) async {
                  SettingProvider.arSwitchValue = newValue;
                  if (SettingProvider.arSwitchValue) {
                    provider.changeCurrentLocal("ar");
                  } else {
                    provider.changeCurrentLocal("en");
                  }
                },
                activeColor: provider.currentTheme == ThemeMode.light
                    ? AppColors.primary
                    : AppColors.accent_dark,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                AppLocalizations.of(context)!.dark_mode,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const Spacer(),
              Switch(
                value: SettingProvider.darkModeSwitchValue,
                onChanged: (newValue) {
                  SettingProvider.darkModeSwitchValue = newValue;
                  if (SettingProvider.darkModeSwitchValue) {
                    provider.setCurrentTheme(true);
                  } else {
                    provider.setCurrentTheme(false);
                  }
                },
                activeColor: provider.currentTheme == ThemeMode.light
                    ? AppColors.primary
                    : AppColors.accent_dark,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
