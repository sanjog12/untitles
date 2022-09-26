import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/math_details/presentation/manager/get_match_data_notifier.dart';

class CollapsedScoreCard extends StatefulWidget {
  const CollapsedScoreCard({Key? key}) : super(key: key);

  @override
  State<CollapsedScoreCard> createState() => _CollapsedScoreCardState();
}

class _CollapsedScoreCardState extends State<CollapsedScoreCard> {
  List<String> listOfTabs = ["Squads", "Scorecard", "Commentary", "Highlight"];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<GetMatchDataNotifier>(
      builder: (context, matchDataNotifier, child) {
        return Container(
          color: Colors.white,
          height: size.height,
          width: size.width,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: size.height/13,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  SizedBox(width: size.width/15,),
                  CircleAvatar(
                    backgroundColor: Colors.black45,
                    child: Image.network(matchDataNotifier.resultDataModel!.matchData.teamA.thumbUrl,),
                  ),

                  Text(matchDataNotifier.resultDataModel!.matchData.teamA.scores, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: size.height/45)),

                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 0,
                          blurRadius: 1
                        )
                      ]
                    ),
                    child: Text("VS", style: TextStyle(color: Colors.black),),
                  ),

                  Text(matchDataNotifier.resultDataModel!.matchData.teamB.scores, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: size.height/45),),

                  CircleAvatar(
                    backgroundColor: Colors.black45,
                    child: Image.network(matchDataNotifier.resultDataModel!.matchData.teamB.thumbUrl,),
                  ),

                  SizedBox(width: size.width/15,),

                ],
              ),

              Expanded(child: SizedBox()),

              Container(
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
                              ): Container(),
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
