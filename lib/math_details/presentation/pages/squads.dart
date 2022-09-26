import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/math_details/presentation/manager/get_match_data_notifier.dart';

class SquadsScreen extends StatefulWidget {
  const SquadsScreen({Key? key}) : super(key: key);

  @override
  State<SquadsScreen> createState() => _SquadsScreenState();
}

class _SquadsScreenState extends State<SquadsScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<GetMatchDataNotifier>(
      builder: (context, matchDataNotifier, child) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: size.width/40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height/50,),
              Text("PLAYING XI", style: TextStyle(color: Colors.red, fontSize: size.height/45, fontWeight: FontWeight.w500)),

              SizedBox(height: size.height/70,),

              // Table(
              //   children: [
              //     TableRow(
              //       children: [
              //         Container(
              //           padding: EdgeInsets.symmetric(vertical: size.height/150, horizontal: size.width/70),
              //           decoration: BoxDecoration(
              //             color: Colors.white30,
              //             borderRadius: BorderRadius.only(topLeft: Radius.circular(10))
              //           ),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.start,
              //             children: [
              //               CircleAvatar(
              //                 backgroundColor: Colors.transparent,
              //                 child: Image.network(matchDataNotifier.resultDataModel!.matchData.teamA.thumbUrl),
              //               ),
              //
              //               Text(matchDataNotifier.resultDataModel!.matchData.teamA.shortName, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),)
              //             ],
              //           ),
              //         ),
              //
              //         Container(
              //           padding: EdgeInsets.symmetric(vertical: size.height/150, horizontal: size.width/70),
              //           decoration: BoxDecoration(
              //               color: Colors.white30,
              //               borderRadius: BorderRadius.only(topRight: Radius.circular(10))
              //           ),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.end,
              //             children: [
              //
              //               Text(matchDataNotifier.resultDataModel!.matchData.teamB.shortName, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),),
              //               CircleAvatar(
              //                 backgroundColor: Colors.transparent,
              //                 child: Image.network(matchDataNotifier.resultDataModel!.matchData.teamB.thumbUrl),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //
              //     ...List.generate(18, (index){
              //       return TableRow(
              //           children: [
              //             Row(
              //               children: [
              //                 Image.network(
              //                   matchDataNotifier.resultDataModel!.matchData.listPlayers[index].thumbUrl,
              //                   errorBuilder: (context, _, __){
              //                     return CircleAvatar(
              //                       backgroundColor: Colors.white,
              //                       child: Icon(Icons.person),
              //                     );
              //                   },
              //                 ),
              //
              //                 Column(
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                     Text(matchDataNotifier.resultDataModel!.matchData.listPlayers[index].title, style: TextStyle(color: Colors.black, fontSize: size.height/55),),
              //                     Text(matchDataNotifier.resultDataModel!.matchData.listPlayers[index].role)
              //                   ],
              //                 )
              //               ],
              //             ),
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.end,
              //                 children: [
              //
              //                   Column(
              //                     crossAxisAlignment: CrossAxisAlignment.end,
              //                     children: [
              //                       Text(matchDataNotifier.resultDataModel!.matchData.listPlayers[19+index].title, style: TextStyle(color: Colors.black, fontSize: size.height/55),),
              //                       Text(matchDataNotifier.resultDataModel!.matchData.listPlayers[19+index].role)
              //                     ],
              //                   ),
              //
              //                   Image.network(
              //                     matchDataNotifier.resultDataModel!.matchData.listPlayers[19+index].thumbUrl,
              //                     errorBuilder: (context, _, __){
              //                       return CircleAvatar(
              //                         backgroundColor: Colors.white,
              //                         child: Icon(Icons.person),
              //                       );
              //                     },
              //                   ),
              //                 ],
              //               ),
              //           ]
              //       );
              //     }),
              //
              //   ],
              // )
            ],
          ),
        );
      }
    );
  }
}
