import 'dart:convert';
import 'dart:developer';

import 'package:logger/logger.dart';
import 'package:untitled1/math_details/data/models/innings_model.dart';
import 'package:untitled1/math_details/data/models/match_data_model.dart';
import 'package:untitled1/math_details/domain/entities/match_data.dart';
import 'package:untitled1/math_details/domain/entities/result_data.dart';

class ResultDataModel extends ResultData{
  ResultDataModel({required super.matchData, required super.innings});

  factory ResultDataModel.fromJson(Map<String, dynamic> map){
    List<InningsModel> listInningModel = [];
    for(var value in List.from(map["data"]["innings"])){
      listInningModel.add(InningsModel.fromJson(value));
    }
    return ResultDataModel(
        matchData: MatchDataModel.fromJson(map["data"]["matchData"]), innings: listInningModel);
  }

}