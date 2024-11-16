class HomeTournamentModel {
  final String name;
  final String date;

  HomeTournamentModel({required this.name, required this.date});
}

class TournamentCardModel {
  final String cardTitle;
  final List<HomeTournamentModel> tournaments;

  TournamentCardModel({required this.cardTitle, required this.tournaments});
}
