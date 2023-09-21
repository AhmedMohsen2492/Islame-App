import 'package:flutter/material.dart';
import 'package:islame_route/ui/utils/app_assets.dart';
import 'package:islame_route/ui/utils/app_colors.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppAssets.radioTabLogo),
        SizedBox(
          height: 30,
        ),
        Text(
          "Holy Quran Radio",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 40,
              onPressed: (){},
              icon: Icon(
                Icons.skip_previous,
                color: AppColors.primary,
                size: 40,
              ),
            ),
            IconButton(
              iconSize: 70,
                onPressed: (){},
                icon: Icon(
                    Icons.play_arrow,
                  color: AppColors.primary,
                  size: 70,
                ),
            ),
            IconButton(
              iconSize: 40,
              onPressed: (){},
              icon: Icon(
                Icons.skip_next,
                color: AppColors.primary,
                size: 40,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
