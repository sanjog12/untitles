import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/math_details/presentation/manager/get_match_data_notifier.dart';

class TopWidgetHomePage extends StatefulWidget {
  const TopWidgetHomePage({Key? key}) : super(key: key);

  @override
  State<TopWidgetHomePage> createState() => _TopWidgetHomePageState();
}

class _TopWidgetHomePageState extends State<TopWidgetHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<GetMatchDataNotifier>(
      builder: (context, getMatchDataNotifier, child) => Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "images/cricket-bg.png",
            ),
            fit: BoxFit.fitWidth,
          )
        ),

        child: Column(
          children: [

            SizedBox(height: size.height/20,),

            Text(getMatchDataNotifier.resultDataModel?.matchData.title ?? "", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: size.height/45),),
            Container(
              margin: EdgeInsets.symmetric(vertical: size.height/30, horizontal: size.width/20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(10)

              ),
              child: Column(
                children: [

                  Row(
                    children: [
                      Image.network("api"),
                      Text("IND", style: TextStyle(color: Colors.black38),),

                      Expanded(child: SizedBox()),

                      Text("Score full Api"),
                    ]
                  ),

                  Row(
                      children: [
                        Image.network("api"),
                        Text("IND", style: TextStyle(color: Colors.black38),),

                        Expanded(child: SizedBox()),

                        Text("Score full Api"),
                      ]
                  ),


                  Text("status Node api"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
