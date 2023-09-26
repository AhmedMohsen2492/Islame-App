import 'package:flutter/material.dart';
import '../../../../model/sura_details_argument.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../sura content/sura_content.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'dart:ui' as ui;

class AhadethTab extends StatelessWidget {
  const AhadethTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 3,
            child: Image.asset(AppAssets.ahadethTabLogo)
        ),
        Divider(),
        Text(
          AppLocalizations.of(context)!.el_ahadeth,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        Divider(),
        Expanded(
          flex: 7,
          child: ListView.builder(
            itemCount: 50,
            itemBuilder: (context, index) => buildHadethNameItem(index,context),
          ),
        ),
      ],
    );
  }

  Widget buildHadethNameItem(int index,BuildContext context)
  {
    SuraDetailsArgument.isQuran = !SuraDetailsArgument.isQuran;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context,
          SuraContent.routeName ,
          arguments:  SuraDetailsArgument(
              suraName: " (${index+1})الحديث رقم ",
              fileName: "assets/files/ahadeth/h${index+1}.txt",
          ),
        ) ;
      },
      child: Text(
        "${index+1} الحديث رقم ",
        textDirection: ui.TextDirection.ltr,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
