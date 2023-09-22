import 'package:flutter/material.dart';
import 'package:islame_route/ui/utils/app_colors.dart';
import '../../../utils/app_assets.dart';

class SebhaTab extends StatefulWidget {

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> azkar = ["subhan allah","alhamd allah","allah akbar"];
  int zkrNumber = 0 ;
  int numberOfPraises = 0 ;
  double angle = 0 ;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Container(
            height: MediaQuery.of(context).size.height/2.52,
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Image.asset(
                  AppAssets.seb7aHead,
                ),
                Container(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: AnimatedRotation(
                    turns: angle,
                    duration: Duration(milliseconds: 300),
                    child: Image(
                      image: AssetImage(AppAssets.seb7aBody),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Number of praises",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: AppColors.primary,
            ),
            padding: EdgeInsets.all(20),
            child: Text(
              "$numberOfPraises",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                changeZkr();
              },
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(
                AppColors.primary,
              )
            ),
              child: Text(
                "${azkar[zkrNumber]}",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400
                ),
              ),
          ),
          Spacer(),
        ]
      ),
    );
  }

  void changeZkr(){
    setState(() {
      angle += 1/33 ;
    });
    if(numberOfPraises==33) {
       numberOfPraises=0;
       if(zkrNumber==azkar.length-1)
         {
           zkrNumber=0;
         }
       else
         {
           zkrNumber++;
         }
      }
    else
      {
        numberOfPraises++;
      }
  }
}
