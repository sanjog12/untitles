import 'dart:core';

class Innings{
  final int iid;
  final int number;
  final String name;
  final String sortName;
  final int status;
  final int result;
  final int battingTeamId;
  final int fieldingTeamId;
  final String scores;
  final String scoresFull;

  final List<BatsMen> listBatsMen;
  final List<Bowler> listBowlers;
  final List<Fielder> listFielder;
  final List<Fows> listFows;
  final LastWicket lastWicket;
  final ExtraRuns extraRuns;
  final Equations equations;
  final CurrentPartnership currentPartnership;
  final List<DidNotBat> listDidNotBat;
  final TeamInning teamInning;

  Innings(
      {required this.iid,
        required this.number,
        required this.name,
        required this.sortName,
        required this.status,
        required this.result,
        required this.battingTeamId,
        required this.fieldingTeamId,
        required this.scores,
        required this.scoresFull,
        required this.listBatsMen,
        required this.listBowlers,
        required this.listFielder,
        required this.listFows,
        required this.lastWicket,
        required this.extraRuns,
        required this.equations,
        required this.currentPartnership,
        required this.listDidNotBat,
        required this.teamInning});

}


class BatsMen{
  final String name;
  final String batsManId;
  final String batting;
  final String role;
  final String roleStr;
  final String runs;
  final String ballsFaced;
  final String four;
  final String sixes;
  final String run0;
  final String run1;
  final String run2;
  final String run3;
  final String run5;
  final String howOut;
  final String dismissal;
  final String strikeRate;
  final String bowlerId;
  final String firstFieldId;
  final String secondFielderId;
  final String thridFielderId;

  BatsMen({required this.name, required this.batsManId, required this.batting,
    required this.role, required this.roleStr, required this.runs, required this.ballsFaced, required this.four, required this.run0, required this.run1, required this.run2,
    required this.run3, required this.run5, required this.howOut, required this.dismissal, required this.strikeRate, required this.bowlerId, required this.firstFieldId,
    required this.secondFielderId, required this.thridFielderId, required this.sixes});


}


class Bowler{
  final String name;
  final String bowlerId;
  final String bowling;
  final String overs;
  final String madens;
  final String runConceded;
  final String wickets;
  final String noBalls;
  final String wides;
  final String econ;
  final String run0;
  final String bowledCount;
  final String lbwCount;

  Bowler(
      {required this.name, required this.bowlerId, required this.bowling, required this.overs, required this.madens, required this.runConceded,
        required this.wickets, required this.noBalls, required this.wides, required this.econ, required this.run0, required this.bowledCount, required this.lbwCount});

}

class Fielder{
  final String fielderId;
  final String fielderName;
  final int catches;
  final int runoutThrower;
  final int runoutCatcher;
  final int stumping;
  final String isSustitue;
  final int runoutDirectHit;

  Fielder(
      {required this.fielderId, required this.fielderName, required this.catches, required this.runoutThrower, required this.runoutCatcher, required this.runoutDirectHit,
        required this.stumping, required this.isSustitue});

}


class Fows{
  final String name;
  final String batsmanId;
  final String runs;
  final String balls;
  final String howOut;
  final int scoreAtDismissal;
  final String oversAtDismissal;
  final String bowlerId;
  final String dismissal;
  final int number;
  final String playerImg;

  Fows(
      {required this.name,required this.batsmanId,required this.runs,required this.balls,required this.howOut,required this.scoreAtDismissal,
        required this.oversAtDismissal,required this.bowlerId,required this.dismissal,required this.number,required this.playerImg});
}

class LastWicket{
  final String name;
  final String bastmanId;
  final String runs;
  final String balls;
  final String howOut;
  final int scoreAtDismissal;
  final String oversAtDismissal;
  final String bowlerId;
  final String dismissal;
  final int number;

  LastWicket(
      {required this.name,required this.bastmanId,required this.runs,required this.balls,required this.howOut,required this.scoreAtDismissal,
        required this.oversAtDismissal,required this.bowlerId,required this.dismissal,required this.number});
}

class ExtraRuns{
  final int byes;
  final int legbyes;
  final int wides;
  final int noballs;
  final String penalty;
  final int total;

  ExtraRuns(
      {required this.byes,required this.legbyes,required this.wides,required this.noballs,required this.penalty,required this.total});


}


class Equations{
  final int runs;
  final int wickets;
  final String over;
  final int bowlersUsed;
  final String runrate;

  Equations({required this.runs, required this.wickets, required this.over, required this.bowlersUsed, required this.runrate});

}


class CurrentPartnership{
  final int runs;
  final int balls;
  final double overs;
  final List<BatsmenPartnership> listBatsMenShortInfo;

  CurrentPartnership({required this.runs, required this.balls, required this.overs, required this.listBatsMenShortInfo});
}

class BatsmenPartnership{
  final String name;
  final int batsmenId;
  final int balls;
  final int runs;

  BatsmenPartnership({required this.name,required this.batsmenId,required this.balls, required this.runs});
}

class DidNotBat{
  final String playerId;
  final String name;
  final String playerImg;

  DidNotBat({required this.playerId, required this.name, required this.playerImg});

}
class TeamInning{
  final int teamId;
  final String name;
  final String shortName;
  final String logoUrl;
  final String thumbUrl;
  final String scoresFull;
  final String scores;
  final String overs;

  TeamInning(
      {required this.teamId,required this.name,required this.shortName,required this.logoUrl,required this.thumbUrl,required this.scoresFull, required this.scores,required this.overs});

}