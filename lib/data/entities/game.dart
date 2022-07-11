class Game {
  late String id;
  late int score = 0;
  late String idPlayer;
  late String idWord;
  late DateTime date = DateTime.now();
  late bool ended = false;
  late List<String> essaies = [];

  Game(this.score, this.idPlayer, this.idWord, this.date, this.ended,
      this.essaies);

  // Game.fromJson(Map<String, dynamic> json)
  //     : this(json['id'], json['idPLayer'], json['IdWord'], json['date'],
  //           json['ended'], json['essaies']);

  Game.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    score = json['score'];
    idPlayer = json['idPlayer'];
    idWord = json['idWord'];
    date = json['date'];
    ended = json['ended'];
    essaies = json['essaies'];
  }

  Map<String, dynamic> toJson() {
    return {
      'idPlayer': idPlayer,
      'idWord': idWord,
      'date': date,
      'ended': ended,
      'essaies': essaies,
    };
  }
}
