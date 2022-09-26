import 'package:logger/logger.dart';
import 'package:untitled1/math_details/domain/entities/innings.dart';

class InningsModel extends Innings{
  InningsModel({required super.iid, required super.number, required super.name, required super.sortName,
    required super.status, required super.result, required super.battingTeamId, required super.fieldingTeamId,
    required super.scores, required super.scoresFull, required super.listBatsMen, required super.listBowlers,
    required super.listFielder, required super.listFows, required super.lastWicket, required super.extraRuns, required super.equations,
    required super.currentPartnership, required super.listDidNotBat, required super.teamInning});


  factory InningsModel.fromJson(Map<String, dynamic> map){
    // Logger().d(map);
    List<BatsMen> listBatsMenModel = [];
    List<BowlerModel> listBowlerModel = [];
    List<FielderModel> listFielderModel = [];
    List<FowsModel> listFowsModel = [];
    List<DidNotBatModel> listDidNotBatModel = [];

    for(var value in List.from(map["batsmen"])){
      listBatsMenModel.add(BatsMenModel.fromJson(value));
    }
    for(var value in List.from(map["bowlers"])){
      listBowlerModel.add(BowlerModel.fromJson(value));
    }
    for(var value in List.from(map["fielder"])){
      listFielderModel.add(FielderModel.fromJson(value));
    }
    for(var value in List.from(map["fows"])){
      listFowsModel.add(FowsModel.fromJson(value));
    }
    for(var value in List.from(map["did_not_bat"])){
      listDidNotBatModel.add(DidNotBatModel.fromJson(value));
    }

    return InningsModel(
        iid: map["iid"],
        number: map["number"],
        name: map["name"],
        sortName: map["short_name"],
        status: map["status"],
        result: map["result"],
        battingTeamId: map["batting_team_id"],
        fieldingTeamId: map["fielding_team_id"],
        scores: map["scores"],
        scoresFull: map["scores_full"],
        listBatsMen: listBatsMenModel,
        listBowlers: listBowlerModel,
        listFielder: listFielderModel,
        listFows: listFowsModel,
        lastWicket: LastWicketModel.fromJson(map["last_wicket"]),
        extraRuns: ExtraRunsModel.fromJson(map["extra_runs"]),
        equations: EquationModel.fromJson(map["equations"]),
        currentPartnership: CurrentPartnershipModel.fromJson(map["current_partnership"]),
        listDidNotBat: listDidNotBatModel,
        teamInning: TeamInningModel.fromJson(map["team"])
    );
  }

}


class BatsMenModel extends BatsMen{
  BatsMenModel({required super.name, required super.batsManId, required super.batting, required super.role, required super.roleStr,
    required super.runs, required super.ballsFaced, required super.four, required super.run0, required super.run1, required super.run2,
    required super.run3, required super.run5, required super.howOut, required super.dismissal, required super.strikeRate, required super.bowlerId,
    required super.firstFieldId, required super.secondFielderId, required super.thridFielderId, required super.sixes});


  factory BatsMenModel.fromJson(Map<String , dynamic> map){
    BatsMenModel batsMenModel = BatsMenModel(
        name: map["name"] ,
        batsManId: map["batsman_id"],
        batting: map["batting"],
        role: map["role"],
        roleStr: map["role_str"],
        runs: map["runs"] ,
        ballsFaced: map["balls_faced"],
        four: map["fours"] ,
        sixes: map["sixes"],
        run0: map["run0"],
        run1: map["run1"],
        run2: map["run2"],
        run3: map["run3"],
        run5: map["run5"],
        howOut: map["how_out"],
        dismissal: map["dismissal"],
        strikeRate: map["strike_rate"],
        bowlerId: map["bowler_id"] ,
        firstFieldId: map["first_fielder_id"] ,
        secondFielderId: map["second_fielder_id"] ,
        thridFielderId: map["third_fielder_id"] ,
    );


    return batsMenModel;
  }
}

class BowlerModel extends Bowler{
  BowlerModel({required super.name, required super.bowlerId, required super.bowling, required super.overs, required super.madens, required super.runConceded, required super.wickets, required super.noBalls, required super.wides, required super.econ, required super.run0, required super.bowledCount, required super.lbwCount});

  factory BowlerModel.fromJson(Map<String, dynamic> map){
    Logger().d(map);
    return BowlerModel(
        name: map["name"] ?? "",
        bowlerId: map["bowler_id"] ?? "",
        bowling: map["bowling"] ?? "",
        overs: map["overs"] ?? "",
        madens: map["maidens"] ?? "",
        runConceded: map["runs_conceded"] ?? "",
        wickets: map["wickets"] ?? "",
        noBalls: map["noballs"] ?? "",
        wides: map["wides"] ?? "",
        econ: map["econ"] ?? "",
        run0: map["run0"] ?? "",
        bowledCount: map["bowledcount"] ?? "",
        lbwCount: map["lbwcount"] ?? ""
    );
  }
}


class FielderModel extends Fielder{
  FielderModel({required super.fielderId, required super.fielderName, required super.catches, required super.runoutThrower, required super.runoutCatcher, required super.runoutDirectHit, required super.stumping, required super.isSustitue});


  factory FielderModel.fromJson(Map<String, dynamic> map){
    return FielderModel(
        fielderId: map["fielder_id"]  ?? "",
        fielderName: map["fielder_name"] ?? "",
        catches: map["catches"] ?? "",
        runoutThrower: map["runout_thrower"]  ?? -1,
        runoutCatcher: map["runout_catcher"] ?? -1,
        runoutDirectHit: map["runout_direct_hit"]  ?? -1,
        stumping: map["stumping"]  ?? -1,
        isSustitue: map["is_substitute"]  ?? -1
    );
  }
}

class FowsModel extends Fows{
  FowsModel({required super.name, required super.batsmanId,
    required super.runs, required super.balls, required super.howOut, required super.scoreAtDismissal,
    required super.oversAtDismissal, required super.bowlerId, required super.dismissal, required super.number, required super.playerImg});

  factory FowsModel.fromJson(Map<String, dynamic> map){
    return FowsModel(
        name: map["name"],
        batsmanId: map["batsman_id"],
        runs: map["runs"],
        balls: map["balls"],
        howOut: map["how_out"],
        scoreAtDismissal: map["score_at_dismissal"],
        oversAtDismissal: map["overs_at_dismissal"],
        bowlerId: map["bowler_id"],
        dismissal: map["dismissal"],
        number: map["number"],
        playerImg: map["player_img"]);
  }

}

class LastWicketModel extends LastWicket{
  LastWicketModel({required super.name, required super.bastmanId, required super.runs, required super.balls, required super.howOut, required super.scoreAtDismissal, required super.oversAtDismissal, required super.bowlerId, required super.dismissal, required super.number});

  factory LastWicketModel.fromJson(Map<String, dynamic> map){
    return LastWicketModel(
        name: map["name"],
        bastmanId: map["batsman_id"],
        runs: map["runs"],
        balls: map["balls"],
        howOut: map["how_out"],
        scoreAtDismissal: map["score_at_dismissal"],
        oversAtDismissal: map["overs_at_dismissal"],
        bowlerId: map["bowler_id"],
        dismissal: map["dismissal"],
        number: map["number"],
    );
  }
}

class ExtraRunsModel extends ExtraRuns{
  ExtraRunsModel({required super.byes, required super.legbyes, required super.wides, required super.noballs, required super.penalty, required super.total});


  factory ExtraRunsModel.fromJson(Map<String, dynamic> map){
    return ExtraRunsModel(
        byes: map["byes"],
        legbyes: map["legbyes"],
        wides: map["wides"],
        noballs: map["noballs"],
        penalty: map["penalty"],
        total: map["total"]);
  }
}

class EquationModel extends Equations{
  EquationModel({required super.runs, required super.wickets, required super.over, required super.bowlersUsed, required super.runrate});

  factory EquationModel.fromJson(Map<String, dynamic> map){
    return EquationModel(
        runs: map["runs"],
        wickets: map["wickets"],
        over: map["overs"],
        bowlersUsed: map["bowlers_used"],
        runrate: map["runrate"],
    );
  }

}

class CurrentPartnershipModel extends CurrentPartnership{
  CurrentPartnershipModel({required super.runs, required super.balls, required super.overs, required super.listBatsMenShortInfo});

  factory CurrentPartnershipModel.fromJson(Map<String, dynamic> map){
    Logger().d(map);
    return CurrentPartnershipModel(
        runs: map["runs"],
        balls: map["balls"],
        overs: double.parse(map["overs"].toString()),
        listBatsMenShortInfo: List<BatsmenPartnershipModel>.from(Iterable.castFrom(map["batsmen"]).map((e) => BatsmenPartnershipModel.fromJson(e)))
    );
  }
}

class BatsmenPartnershipModel extends BatsmenPartnership{
  BatsmenPartnershipModel({required super.name, required super.batsmenId, required super.balls, required super.runs});
  
  factory BatsmenPartnershipModel.fromJson(Map<String, dynamic> map){
    return BatsmenPartnershipModel(name: map["name"], batsmenId: map["batsman_id"], balls: map["balls"], runs: map["runs"]);
  }
  
}

class DidNotBatModel extends DidNotBat{
  DidNotBatModel({required super.playerId, required super.name, required super.playerImg});

  factory DidNotBatModel.fromJson(Map<String, dynamic> map){
    return DidNotBatModel(playerId: map["player_id"], name: map["name"], playerImg: map["player_img"]);
  }

}


class TeamInningModel extends TeamInning{
  TeamInningModel({required super.teamId, required super.name, required super.shortName, required super.logoUrl, required super.thumbUrl, required super.scoresFull, required super.scores, required super.overs});

  factory TeamInningModel.fromJson(Map<String, dynamic> map){
    return TeamInningModel(
        teamId: map["team_id"],
        name: map["name"],
        shortName: map["short_name"],
        logoUrl: map["logo_url"],
        thumbUrl: map["thumb_url"],
        scoresFull: map["scores_full"],
        scores: map["scores"],
        overs: map["overs"]
    );
  }

}