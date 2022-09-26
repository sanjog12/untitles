import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/math_details/presentation/manager/get_match_data_notifier.dart';
import 'package:untitled1/math_details/presentation/manager/selected_innings_notifier.dart';

class ScoreCrard extends StatefulWidget {
  const ScoreCrard({Key? key}) : super(key: key);

  @override
  State<ScoreCrard> createState() => _ScoreCrardState();
}

class _ScoreCrardState extends State<ScoreCrard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer2<GetMatchDataNotifier, SelectedInningsNotifier>(
      builder: (context, matchDataNotifier, selectedInningsNotifier, child) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: size.width/30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: size.height/40,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(2, (index) {
                    return InkWell(
                      onTap: (){
                        selectedInningsNotifier.selectedInnings = index;
                      },
                      child: Container(
                          width: size.width/2.4,
                          height: size.height/12,
                          decoration: BoxDecoration(
                            border: Border.all(color: selectedInningsNotifier.selectedInnings == index? Colors.redAccent:Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(10),

                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [

                              CircleAvatar(
                                radius: size.height/60,
                                backgroundColor: Colors.transparent,
                                child: Image.network(matchDataNotifier.resultDataModel!.innings[index].teamInning.thumbUrl,),
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(matchDataNotifier.resultDataModel!.innings[index].name, style: TextStyle(color: Colors.black, fontSize: size.height/65),),
                                  Text(matchDataNotifier.resultDataModel!.innings[index].scoresFull, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: size.height/50),),
                                  SizedBox(height: size.height/70,)
                                ],
                              ),
                              SizedBox(width: size.width/40,)
                            ],
                          )
                      ),
                    );
                  })

                ],
              ),

              SizedBox(height: size.height/30,),

              Text("BATTING", style: TextStyle(color: Colors.red, fontSize: size.height/45, fontWeight: FontWeight.w500),),


              Container(
                padding: EdgeInsets.symmetric(vertical: size.height/70, horizontal: size.width/80),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.35),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("BATSMAN", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: size.height/50),),
                    SizedBox(width: size.width/10,),
                    Text("R", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: size.height/50)),
                    Text("B", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: size.height/50)),
                    Text("4R", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: size.height/50)),
                    Text("6S", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: size.height/50)),
                    SizedBox(width: size.width/150,),
                    Text("SR", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: size.height/50))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: size.width/100),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.45),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2
                    )
                  ]
                ),
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].listBatsMen.length,
                  itemBuilder: (context, index){
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: size.width/3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].listBatsMen[index].name, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),),
                                  Text(matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].listBatsMen[index].howOut, style: TextStyle(color: matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].listBatsMen[index].howOut == "Not out"? Colors.green: Colors.black45, fontSize: size.height/65, ),)
                                ],
                              ),
                            ),

                            Text(matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].listBatsMen[index].runs),
                            Text(matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].listBatsMen[index].ballsFaced),
                            Text(matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].listBatsMen[index].four),
                            Text(matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].listBatsMen[index].sixes),
                            Text(matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].listBatsMen[index].strikeRate),
                          ],
                        ),

                        Divider(thickness: 1, color: Colors.black12, indent: size.width/3,)
                      ],
                    );
                  },
                ),
              ),

              SizedBox(height: size.height/60,),

              Container(
                padding: EdgeInsets.symmetric(vertical: size.height/100, horizontal: size.width/100),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.35),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("EXTRAS", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: size.height/50),),
                    SizedBox(width: size.width/10,),
                    Text("B", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: size.height/50)),
                    Text("W", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: size.height/50)),
                    Text("NB", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: size.height/50)),
                    Text("LB", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: size.height/50)),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: size.width/100, vertical: size.height/100),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.45),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2
                      )
                    ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].extraRuns.total.toString(), style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),),
                    SizedBox(width: size.width/6,),
                    Text(matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].extraRuns.byes.toString()),
                    Text(matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].extraRuns.wides.toString()),
                    Text(matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].extraRuns.noballs.toString()),
                    Text(matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].extraRuns.legbyes.toString()),
                  ],
                ),
              ),


              SizedBox(height: size.height/30,),

              Text("YET TO BAT", style: TextStyle(color: Colors.red, fontSize: size.height/45, fontWeight: FontWeight.w500),),

              SizedBox(height: size.height/70,),
              SizedBox(
                height: size.height/6,
                width: size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].listDidNotBat.length,
                  itemBuilder: (context, index){
                    return SizedBox(
                      width: size.width/4.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                            matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].listDidNotBat[index].playerImg, height: size.height/15,
                            errorBuilder: (context, object , stackTrace){
                              return CircleAvatar(
                                radius: size.height/30,
                                backgroundColor: Colors.white30,
                                child: Icon(Icons.person),
                              );
                            },
                          ),
                          SizedBox(height: size.height/60,),
                          SizedBox(width: size.width/6, child: Text(matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].listDidNotBat[index].name, style: TextStyle(color: Colors.black54, fontSize: size.height/60, ),))
                        ],
                      ),
                    );
                  },
                ),
              ),


              SizedBox(height: size.height/30,),

              Text("BOWLING", style: TextStyle(color: Colors.red, fontSize: size.height/45, fontWeight: FontWeight.w500),),



              Container(
                padding: EdgeInsets.symmetric(vertical: size.height/100, horizontal: size.width/100),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.35),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("BOWLER", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: size.height/50),),
                    SizedBox(width: size.width/10,),
                    Text("O", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: size.height/50)),
                    Text("M", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: size.height/50)),
                    Text("R", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: size.height/50)),
                    Text("W", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: size.height/50)),
                    Text("Econ", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: size.height/50))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: size.width/100),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.45),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2
                      )
                    ]
                ),
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].listBowlers.length,
                  itemBuilder: (context, index){
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: size.width/3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].listBowlers[index].name, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),),
                                ],
                              ),
                            ),

                            Text(matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].listBowlers[index].overs),
                            Text(matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].listBowlers[index].madens),
                            Text(matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].listBowlers[index].runConceded),
                            Text(matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].listBowlers[index].wickets),
                            Text(matchDataNotifier.resultDataModel!.innings[selectedInningsNotifier.selectedInnings].listBowlers[index].econ),
                          ],
                        ),

                        Divider(thickness: 1, color: Colors.black12, indent: size.width/3,)
                      ],
                    );
                  },
                ),
              ),


              SizedBox(height: size.height/20,),
            ],
          ),
        );
      }
    );
  }
}
