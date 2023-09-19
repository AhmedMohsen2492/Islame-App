import 'package:flutter/material.dart';
import '../../../../model/sura_details_argument.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';
import '../../sura content/sura_content.dart';

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
        Divider(
          color: AppColors.primary,
          thickness: 3,
        ),
        Text(
          "El ahadeth",
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
      onTap: ()
      {
        Navigator.pushNamed(context,
          SuraContent.routeName ,
          arguments:  SuraDetailsArgument(
              suraName: "الحديث رقم (${index+1}) ",
              fileName: "assets/files/ahadeth/h${index+1}.txt",
          ),
        ) ;
      },
      child: Text(
        "${index+1} الحديث رقم ",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
