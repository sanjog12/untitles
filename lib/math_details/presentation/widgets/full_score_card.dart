import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/core/constants/constant_image_path.dart';
import 'package:untitled1/math_details/presentation/manager/get_match_data_notifier.dart';

class FullScreenScoreCard extends StatefulWidget {
  const FullScreenScoreCard({Key? key}) : super(key: key);

  @override
  State<FullScreenScoreCard> createState() => _FullScreenScoreCardState();
}

class _FullScreenScoreCardState extends State<FullScreenScoreCard> {
  List<String> listOfTabs = ["Squads", "Scorecard", "Commentary", "Highlight"];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<GetMatchDataNotifier>(
        builder: (context, matchDataNotifier, child) {
          return Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ConstantImagePath.playgroungImage
                ),
                fit: BoxFit.fill
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: size.height/20),
                Text(matchDataNotifier.resultDataModel!.matchData.title , style: TextStyle(fontSize: size.height/45, color: Colors.black, fontWeight: FontWeight.w700)),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: size.width/25),
                  padding: EdgeInsets.symmetric(vertical: size.height/60, horizontal: size.width/20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(matchDataNotifier.resultDataModel!.matchData.competition.title + " - " + matchDataNotifier.resultDataModel!.matchData.title + " , " + matchDataNotifier.resultDataModel!.matchData.subTitle, style: TextStyle(
                        color: Colors.black54,
                        fontSize: size.height/60
                      ),),

                      SizedBox(height: size.height/50,),

                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Image.network(matchDataNotifier.resultDataModel!.matchData.teamA.thumbUrl,),
                          ),

                          Text(matchDataNotifier.resultDataModel!.matchData.teamA.shortName, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),),

                          Expanded(child: SizedBox()),

                          Text(matchDataNotifier.resultDataModel!.matchData.teamA.scoreFull, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700))
                        ],
                      ),

                      SizedBox(height: size.height/50,),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Image.network(matchDataNotifier.resultDataModel!.matchData.teamB.thumbUrl,),
                          ),

                          Text(matchDataNotifier.resultDataModel!.matchData.teamB.shortName, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),),

                          Expanded(child: SizedBox()),

                          Text(matchDataNotifier.resultDataModel!.matchData.teamB.scoreFull, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),)
                        ],
                      ),

                      SizedBox(height: size.height/50,),

                      Text(matchDataNotifier.resultDataModel!.matchData.statusNode, style: TextStyle(color: Colors.black45, fontWeight: FontWeight.w400),)
                    ],
                  ),
                ),

                Expanded(child: SizedBox()),

                Container(
                  color: Colors.white,
                  height: size.height/20,
                  width: size.width,
                  child: Row(
                    children: List.generate(4, (index){
                      return InkWell(
                        onTap: (){
                          matchDataNotifier.selectedTab = index;
                        },
                        child: SizedBox(
                          width: size.width/4,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children:[
                                Text(listOfTabs[index],style: TextStyle(color: matchDataNotifier.selectedTab == index? Colors.black: Colors.black38, fontSize: size.height/50)),
                                SizedBox(height: size.height/100,),
                                matchDataNotifier.selectedTab == index ?Container(
                                  width: size.width/4,
                                  height: size.height/200,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                ): Container(height: size.height/200,width: size.width/4,),
                              ]
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            )
          );
        }
    );
  }
}
