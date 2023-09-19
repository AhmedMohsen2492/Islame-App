import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../model/sura_details_argument.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_theme.dart';
import 'dart:ui' as ui;

class SuraContent extends StatefulWidget {
  static String routeName = "SuraContent" ;

  @override
  State<SuraContent> createState() => _SuraContentState();
}

class _SuraContentState extends State<SuraContent> {
  String suraContent = "";
  bool isQuran = SuraDetailsArgument.isQuran;

  @override
  Widget build(BuildContext context) {

    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgument ;
    if(suraContent.isEmpty)
      {
        readSuraContent(args.fileName);
      }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppAssets.background),
        ),
      ),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: AppColors.accent,
          ),
          title: Text(
            "Islami" ,
            style: AppTheme.appBarTitleTextStyle,
          ),
          backgroundColor: AppColors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: suraContent.isEmpty ? Center(child: CircularProgressIndicator()) :Center(
          child: Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    args.suraName,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Divider(
                    color: AppColors.primary,
                    thickness: 2,
                  ),
                  Text(
                    textDirection: ui.TextDirection.rtl,
                    suraContent,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void readSuraContent(String fileName) async {
    suraContent = await rootBundle.loadString(fileName) ;
    List<String> suraLines = suraContent.trim().split('\n');
    if(isQuran)
    {
      for(int i=0 ; i< suraLines.length ; i++)
      {
        suraLines[i] += "(${i+1}) ";
      }
    }
    else
    {

    }
    suraContent = suraLines.join("");
    setState(() {});
  }
}
