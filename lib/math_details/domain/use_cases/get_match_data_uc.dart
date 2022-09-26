import 'package:untitled1/core/use_case/use_cases.dart';
import 'package:untitled1/math_details/domain/entities/result_data.dart';
import 'package:untitled1/math_details/domain/repositories/get_match_data_repo.dart';

class GetMatchDataUc extends UseCase<ResultData, ParamsGetMatchData>{

  final GetMatchDataRepo getMatchDataRepo;
  GetMatchDataUc({required this.getMatchDataRepo});

  @override
  Future<ResultData> call(ParamsGetMatchData param) {
    return getMatchDataRepo.getMatchDataRepo();
  }

}


class ParamsGetMatchData{

}