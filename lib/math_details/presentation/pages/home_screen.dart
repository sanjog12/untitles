import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/math_details/presentation/manager/get_match_data_notifier.dart';
import 'package:untitled1/math_details/presentation/pages/commentary.dart';
import 'package:untitled1/math_details/presentation/pages/highlights.dart';
import 'package:untitled1/math_details/presentation/pages/scorecard.dart';
import 'package:untitled1/math_details/presentation/pages/squads.dart';
import 'package:untitled1/math_details/presentation/widgets/collapsed_score_card.dart';
import 'package:untitled1/math_details/presentation/widgets/full_score_card.dart';
import 'package:untitled1/math_details/presentation/widgets/top_widget_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> listOfTabs = ["Squads", "Scorecard", "Commentary", "Highlight"];

  @override
  void initState() {
    context.read<GetMatchDataNotifier>().getMatchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<GetMatchDataNotifier>(
      builder: (context, matchDataNotifier, child) {
        if(matchDataNotifier.getMatchDataNotifierState == GetMatchDataNotifierState.loading){
          return Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white70),
            ),
          );
        }

        if(matchDataNotifier.getMatchDataNotifierState == GetMatchDataNotifierState.error){
          return Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              height: size.height,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(matchDataNotifier.errorMessage, style: TextStyle(color: Colors.red),),
                  ),

                  TextButton(onPressed: (){
                    context.read<GetMatchDataNotifier>().getMatchData();
                  }, child: Text("Retry"))
                ],
              ),
            ),
          );
        }
        return Scaffold(
          backgroundColor: Colors.white.withOpacity(0.85),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: false,
                pinned: true,
                collapsedHeight: size.height/7,
                titleTextStyle: TextStyle(fontSize: size.height/45, color: Colors.black, fontWeight: FontWeight.w700),
                expandedHeight: size.height/3,

                flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constrained) {
                    Logger().d(constrained.maxHeight);
                    return
                    AnimatedSwitcher(
                      duration: Duration(microseconds: 500),
                      child: constrained.maxHeight <size.height/3.5 ? CollapsedScoreCard() :
                      FullScreenScoreCard(),
                    );
                  },
                ),

              ),

              SliverList(
                delegate: SliverChildListDelegate([
                  if(matchDataNotifier.selectedTab == 0)
                    SquadsScreen(),

                  if(matchDataNotifier.selectedTab == 1)
                    ScoreCrard(),

                  if(matchDataNotifier.selectedTab == 2)
                    CommentaryScreen(),

                  if(matchDataNotifier.selectedTab == 3)
                    Highlights(),

                ]
                ),
              ),

            ],
          ),

        );
      }
    );
  }
}
