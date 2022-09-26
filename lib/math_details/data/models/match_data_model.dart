import 'package:logger/logger.dart';
import 'package:untitled1/math_details/domain/entities/match_data.dart';

class MatchDataModel extends MatchData{
  MatchDataModel({required super.mathId, required super.title, required super.shortTitle, required super.format, required super.formatStr,
    required super.status, required super.statusStr, required super.statusNode, required super.verified, required super.preSquad,
    required super.oddsAvailable, required super.gameState, required super.gameStateStr, required super.competition,
    required super.teamA, required super.teamB, required super.dateStart, required super.dateEnd, required super.timestampEnd,
    required super.timestampStart, required super.dateTimeStartIst, required super.dateTimeEndIst, required super.umpires, required super.referee,
    required super.venue, required super.equation, required super.live, required super.result, required super.resultType, required super.winMargin,
    required super.winningTeamId, required super.commentatary, required super.wagon, required super.latestInningNumber, required super.preSquadTime,
    required super.verifyTime, required super.toss, required super.currentOver, required super.previousOver, required super.manOfTheSerioes, required super.isFollan,
    required super.teamBattingFirst, required super.teamBattingSecond, required super.lastFiveOver, required super.liveInningNumber,
    required super.daysRemainOver, required super.manOfTheMatch, required super.listPlayers, required super.subTitle});




  factory MatchDataModel.fromJson(Map<String, dynamic> map){
    List<PlayersModel> listVenueModel = [];
    for(var value in List.from(map["players"])){
      listVenueModel.add(PlayersModel.fromJson(value));
    }
    return MatchDataModel(
      mathId: map["match_id"],
      title: map["title"],
      shortTitle: map["short_title"],
      subTitle: map["subtitle"],
      format: map["format"],
      formatStr: map["format_str"],
      status: map["status"],
      statusStr: map["status_note"],
      verified: map["verified"],
      preSquad: map["pre_squad"],
      oddsAvailable: map["odds_available"],
      gameState: map["game_state"],
      gameStateStr: map["game_state_str"],
      competition: CompetitionModel.fromJson(map["competition"]),
      teamA: TeamModel.fromJson(map["teama"]),
      teamB: TeamModel.fromJson(map["teamb"]),
      dateStart: DateTime.parse(map["date_start"]).toUtc(),
      dateEnd: DateTime.parse(map["date_end"]).toUtc(),
      timestampStart: map["timestamp_start"],
      timestampEnd: map["timestamp_end"],
      dateTimeStartIst: DateTime.parse(map["date_start_ist"]).toLocal(),
      dateTimeEndIst: DateTime.parse(map["date_end_ist"]).toLocal(),
      venue: VenueModel.fromJson(map["venue"]),
      umpires: map["umpires"],
      referee: map["referee"],
      equation: map["equation"],
      live: map["live"],
      result: map["result"],
      resultType: map["result_type"],
      winMargin: map["win_margin"],
      winningTeamId: map["winning_team_id"],
      commentatary: map["commentary"],
      wagon: map["wagon"],
      latestInningNumber: map["latest_inning_number"],
      preSquadTime: DateTime.parse(map["presquad_time"]),
      verifyTime: DateTime.parse(map["verify_time"]),
      toss: TossModel.fromJson(map["toss"]),
      currentOver: map["current_over"],
      previousOver: map["previous_over"],
      manOfTheMatch: ManOfTheMatchModel.fromJson(map["man_of_the_match"]),
      manOfTheSerioes: map["man_of_the_series"],
      isFollan: map["is_followon"],
      teamBattingFirst: map["team_batting_first"],
      teamBattingSecond: map["team_batting_second"],
      lastFiveOver: map["last_five_overs"],
      liveInningNumber: map["live_inning_number"],
      listPlayers: listVenueModel,
      statusNode: map["status_note"],
      daysRemainOver: map["day_remaining_over"],
    );
  }
}


class VenueModel extends Venue{
  VenueModel({required super.venueId, required super.name, required super.location, required super.timezone});

  factory VenueModel.fromJson(Map<String, dynamic> map){
    return VenueModel(
        venueId: map["venue_id"],
        name: map["name"],
        location: map["location"],
        timezone: map["timezone"]);
  }

}

class TossModel extends Toss{
  TossModel({required super.text, required super.winning, required super.decision});

  factory TossModel.fromJson(Map<String, dynamic> map){
    return TossModel(text: map["text"], winning: map["winner"], decision: map["decision"]);
  }

}


class ManOfTheMatchModel extends ManOfTheMatch{
  ManOfTheMatchModel({required super.pid, required super.name, required super.thumbUrl});
  
  factory ManOfTheMatchModel.fromJson(Map<String, dynamic> map){
    return ManOfTheMatchModel(pid: map["pid"], name: map["name"], thumbUrl: map["thumb_url"]);
  }
}

class PlayersModel extends Players{
  PlayersModel({required super.pid, required super.title, required super.shortName, required super.firstName, required super.lastName, required super.middleName, required super.birthday, required super.country, required super.thumbUrl, required super.logoUrl, required super.playingRole, required super.battingStyle, required super.bowlingStyle, required super.fieldingPosition, required super.recentMatch, required super.recentAppearance, required super.fantasyPlayerRating, required super.nationality, required super.role});

  factory PlayersModel.fromJson(Map<String, dynamic> map){
    return PlayersModel(
        pid: map["pid"], title: map["title"],
        shortName: map["short_name"], 
        firstName: map["first_name"], 
        lastName: map["last_name"], 
        middleName: map["middle_name"], 
        birthday: DateTime.parse(map["birthdate"]),
        country: map["country"], 
        thumbUrl: map["thumb_url"], 
        logoUrl: map["logo_url"], 
        playingRole: map["playing_role"], 
        battingStyle: map["batting_style"], 
        bowlingStyle: map["bowling_style"], 
        fieldingPosition: map["fielding_position"], 
        recentMatch: map["recent_match"], 
        recentAppearance: map["recent_appearance"], 
        fantasyPlayerRating: double.parse(map["fantasy_player_rating"].toString()),
        nationality: map["nationality"], 
        role: map["role"]);
  }
}


class TeamModel extends Team{
  TeamModel({required super.teamId, required super.name, required super.scores, required super.shortName, required super.logoUrl, required super.thumbUrl, required super.scoreFull, required super.overs});

  factory TeamModel.fromJson(Map<String, dynamic> map){
    return TeamModel(
        teamId: map["team_id"],
        name: map["name"],
        shortName: map["short_name"],
        logoUrl: map["logo_url"],
        thumbUrl: map["thumb_url"],
        scores:  map["scores"],
        scoreFull: map["scores_full"],
        overs: map["overs"]);
  }
}

class CompetitionModel extends Competition{
  CompetitionModel({required super.cid, required super.title, required super.abbr, required super.type, required super.category, required super.matchFormat, required super.status, required super.season, required super.dateStart, required super.dateend, required super.country, required super.totalMatches, required super.totalRound, required super.totalTeams});

  factory CompetitionModel.fromJson(Map<String, dynamic> map){
    return CompetitionModel(
        cid: map["cid"],
        title: map["title"],
        abbr: map["abbr"],
        type: map["type"],
        category: map["category"],
        matchFormat: map["match_format"],
        status: map["status"],
        season: map["season"],
        dateStart: DateTime.parse(map["datestart"]), 
        dateend: DateTime.parse(map["dateend"]),
        country: map["country"],
        totalMatches: map["total_matches"],
        totalRound: map["total_rounds"],
        totalTeams: map["total_teams"]);
  }

}




