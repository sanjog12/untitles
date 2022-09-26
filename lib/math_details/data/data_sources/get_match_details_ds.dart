import 'dart:convert';
import 'dart:developer';

import 'package:untitled1/math_details/data/models/match_data_model.dart';
import 'package:http/http.dart' as http;
import 'package:untitled1/math_details/data/models/result_data_model.dart';

abstract class GetMatchDetailsDs{
  Future<ResultDataModel> getMatchDetailsDs();
}


class GetMatchDetailsDsImpl extends GetMatchDetailsDs{


  @override
  Future<ResultDataModel> getMatchDetailsDs() {
    return _getMatchDetailsDsImpl();
  }


  Future<ResultDataModel> _getMatchDetailsDsImpl() async{
    http.Client client = http.Client();

    try{
      print("here inside");
      http.Response response = await client.get(Uri.parse("https://production-rest-microservice.thesportstak.com//api/v2/cricket/getScoreCard/56622"));
      log(response.statusCode.toString());
      log(response.body);
      ResultDataModel resultDataModel = ResultDataModel.fromJson(
            jsonDecode(response.body));
      print("here after parsing");
      print(resultDataModel.innings.first.name);

      return resultDataModel;

    } on http.ClientException{
      rethrow;
    } catch(e, stack){
      print(e);
      print(stack);
      rethrow;
    }
  }


}