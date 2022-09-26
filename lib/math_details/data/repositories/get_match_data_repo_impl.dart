import 'package:untitled1/math_details/data/data_sources/get_match_details_ds.dart';
import 'package:untitled1/math_details/domain/entities/result_data.dart';
import 'package:untitled1/math_details/domain/repositories/get_match_data_repo.dart';
import 'package:http/http.dart' as http;

class GetMatchDataRepoImpl extends GetMatchDataRepo{

  final GetMatchDetailsDs getMatchDetailsDs;

  GetMatchDataRepoImpl({required this.getMatchDetailsDs});

  @override
  Future<ResultData> getMatchDataRepo() {
    try{
      return getMatchDetailsDs.getMatchDetailsDs();
    } on http.ClientException catch(e){
      throw(e);
    } catch(e){
      throw("Something went wrong");
    }
  }



}