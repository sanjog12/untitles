import 'package:flutter/cupertino.dart';
import 'package:untitled1/math_details/data/data_sources/get_match_details_ds.dart';
import 'package:untitled1/math_details/data/models/result_data_model.dart';
import 'package:untitled1/math_details/data/repositories/get_match_data_repo_impl.dart';
import 'package:untitled1/math_details/domain/use_cases/get_match_data_uc.dart';



enum GetMatchDataNotifierState{initial, loading, loaded, error}
class GetMatchDataNotifier extends ChangeNotifier{

  String errorMessage = "";

  ResultDataModel? resultDataModel;

  GetMatchDataNotifierState getMatchDataNotifierState = GetMatchDataNotifierState.initial;

  int _selectedTab= 0;
  int get selectedTab => _selectedTab;
  set selectedTab(int value){
    _selectedTab = value;
    notifyListeners();
  }

  final GetMatchDataUc _getMatchDataUc = GetMatchDataUc(getMatchDataRepo: GetMatchDataRepoImpl(getMatchDetailsDs: GetMatchDetailsDsImpl()));

  getMatchData() async{
    try{
      getMatchDataNotifierState = GetMatchDataNotifierState.loading;
      notifyListeners();
      resultDataModel = (await _getMatchDataUc(ParamsGetMatchData())) as ResultDataModel;
      getMatchDataNotifierState = GetMatchDataNotifierState.loaded;
      notifyListeners();
    } catch(e){
      getMatchDataNotifierState = GetMatchDataNotifierState.error;
      errorMessage = e.toString();
      notifyListeners();
    }
  }

}