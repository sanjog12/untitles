class MatchData {


  final int mathId;
  final String title;
  final String shortTitle;
  final String subTitle;
  final int format;
  final String formatStr;
  final int status;
  final String statusStr;
  final String statusNode;
  final String verified;
  final String preSquad;
  final String oddsAvailable;
  final int gameState;
  final String gameStateStr;
  final Competition competition;
  final Team teamA;
  final Team teamB;
  final DateTime dateStart;
  final DateTime dateEnd;
  final int timestampEnd;
  final int timestampStart;
  final DateTime dateTimeStartIst;
  final DateTime dateTimeEndIst;
  final Venue venue;
  final String umpires;
  final String referee;
  final String equation;
  final String live;
  final String result;
  final int resultType;
  final String winMargin;
  final int winningTeamId;
  final int commentatary;
  final int wagon;
  final int latestInningNumber;
  final DateTime preSquadTime;
  final DateTime verifyTime;
  final Toss toss;
  final String currentOver;
  final String previousOver;
  final ManOfTheMatch manOfTheMatch;
  final String manOfTheSerioes;
  final int isFollan;
  final String teamBattingFirst;
  final String teamBattingSecond;
  final String lastFiveOver;
  final String liveInningNumber;
  final List<Players> listPlayers;
  final String daysRemainOver;


  MatchData({required this.mathId, required this.title, required this.shortTitle, required this.format, required this.formatStr, required this.status, required this.statusStr, required this.statusNode, required this.verified, required this.preSquad, required this.oddsAvailable, required this.gameState, required this.gameStateStr, required this.competition,
    required this.teamA, required this.teamB, required this.dateStart, required this.dateEnd, required this.timestampEnd, required this.timestampStart, required this.dateTimeStartIst, required this.dateTimeEndIst, required this.umpires, required this.referee, required this.equation, required this.live, required this.result, required this.resultType, required this.winMargin,
    required this.venue, required this.winningTeamId, required this.commentatary, required this.wagon, required this.latestInningNumber,
    required this.preSquadTime, required this.verifyTime, required this.toss, required this.currentOver, required this.previousOver, required this.manOfTheSerioes,
    required this.isFollan, required this.teamBattingFirst, required this.teamBattingSecond, required this.lastFiveOver, required this.manOfTheMatch,
    required this.liveInningNumber, required this.daysRemainOver, required this.listPlayers, required this.subTitle});

}


class Competition{
  final int cid;
  final String title;
  final String abbr;
  final String type;
  final String category;
  final String matchFormat;
  final String status;
  final String season;
  final DateTime dateStart;
  final DateTime dateend;
  final String country;
  final String totalMatches;
  final String totalRound;
  final String totalTeams;

  Competition(
      {required this.cid,
        required this.title,
        required this.abbr,
        required this.type,
        required this.category,
        required this.matchFormat,
        required this.status,
        required this.season,
        required this.dateStart,
        required this.dateend,
        required this.country,
        required this.totalMatches,
        required this.totalRound,
        required this.totalTeams});
}

class Team{
  final int teamId;
  final String name;
  final String shortName;
  final String logoUrl;
  final String thumbUrl;
  final String scoreFull;
  final String scores;
  final String overs;

  Team(
      {required this.teamId,
        required this.name,
        required this.shortName,
        required this.logoUrl,
        required this.thumbUrl,
        required this.scoreFull,
        required this.scores,
        required this.overs});

}


class Venue{
  final String venueId;
  final String name;
  final String location;
  final String timezone;

  Venue({required this.venueId, required this.name, required this.location, required this.timezone});
}

class Toss{
  final String text;
  final int winning;
  final int decision;

  Toss({required this.text, required this.winning, required this.decision});

}


class ManOfTheMatch{
  final int pid;
  final String name;
  final String thumbUrl;

  ManOfTheMatch({required this.pid, required this.name, required this.thumbUrl});

}

class Players{
  final int pid;
  final String title;
  final String shortName;
  final String firstName;
  final String lastName;
  final String middleName;
  final DateTime birthday;
  final String country;
  final String thumbUrl;
  final String logoUrl;
  final String playingRole;
  final String battingStyle;
  final String bowlingStyle;
  final String fieldingPosition;
  final int recentMatch;
  final int recentAppearance;
  final double fantasyPlayerRating;
  final String nationality;
  final String role;

  Players(
      {required this.pid,
        required this.title,
        required this.shortName,
        required this.firstName,
        required this.lastName,
        required this.middleName,
        required this.birthday,
        required this.country,
        required this.thumbUrl,
        required this.logoUrl,
        required this.playingRole,
        required this.battingStyle,
        required this.bowlingStyle,
        required this.fieldingPosition,
        required this.recentMatch,
        required this.recentAppearance,
        required this.fantasyPlayerRating,
        required this.nationality,
        required this.role});
}
