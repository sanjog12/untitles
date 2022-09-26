import 'package:untitled1/math_details/domain/entities/innings.dart';
import 'package:untitled1/math_details/domain/entities/match_data.dart';

class ResultData{

  final List<Innings> innings;
  final MatchData matchData;

  ResultData({required this.matchData, required this.innings});

}