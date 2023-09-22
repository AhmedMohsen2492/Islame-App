import 'package:flutter/material.dart';
import 'package:islame_route/model/sura_details_argument.dart';
import 'package:islame_route/ui/screens/sura%20content/sura_content.dart';
import 'package:islame_route/ui/utils/app_assets.dart';
import 'package:islame_route/ui/utils/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 3,
            child: Image.asset(AppAssets.quranTabLogo)
        ),
        Divider(
          color: AppColors.primary,
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.sura_name,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
        Divider(
          color: AppColors.primary,
          thickness: 3,
        ),
        Expanded(
          flex: 7,
          child: ListView.builder(
              itemCount: AppAssets.ArSuras.length,
              itemBuilder: (context, index) => buildSuraNameItem(index,context),
          ),
        ),
      ],
    );
  }

  Widget buildSuraNameItem(int index,BuildContext context)
  {
    SuraDetailsArgument.isQuran = true;
    return InkWell(
      onTap: ()
      {
        Navigator.pushNamed(
            context,
            SuraContent.routeName ,
        arguments:  SuraDetailsArgument(
            suraName: AppAssets.ArSuras[index],
            fileName: "assets/files/quran/${index+1}.txt",
        ),
        ) ;
      },
      child: Text(
        AppAssets.ArSuras[index],
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
