import 'package:flutter/material.dart';
import 'package:islame_route/provider/setting_provider.dart';
import 'package:islame_route/ui/utils/app_assets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppAssets.radioTabLogo),
        const SizedBox(
          height: 30,
        ),
        Text(
          AppLocalizations.of(context)!.holy_quran_radio,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 40,
              onPressed: () {},
              icon: Icon(
                provider.currentLocal == "en"
                    ? Icons.skip_previous
                    : Icons.skip_next,
                size: 40,
              ),
            ),
            IconButton(
              iconSize: 70,
              onPressed: () {},
              icon: const Icon(
                Icons.play_arrow,
                size: 70,
              ),
            ),
            IconButton(
              iconSize: 40,
              onPressed: () {},
              icon: Icon(
                provider.currentLocal == "en"
                    ? Icons.skip_next
                    : Icons.skip_previous,
                size: 40,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
