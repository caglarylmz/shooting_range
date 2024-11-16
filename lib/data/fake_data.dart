import 'package:shooting_range/features/home/model/profile_model.dart';
import 'package:shooting_range/features/home/model/tournament_card_model.dart';
import 'package:shooting_range/utils/consts/images.dart';

class FakeData {
  FakeData._();

  static var profileModel = ProfileModel(
      fullName: "Muhammed Abdülselam Elbi",
      userName: "m.elbi",
      phoneNumber: "90 555 831 5555",
      email: "m.elbi@mail.com",
      profilePhoto: AppImages.profile,
      lastSignInDate: "12 Kasım 2024 15:40");

  static var nextTournaments =
      TournamentCardModel(cardTitle: "Gelecek Turnuvalar", tournaments: [
    HomeTournamentModel(name: "Turnuva 1", date: "13 Ocak 2025"),
    HomeTournamentModel(name: "Turnuva 2", date: "14 Şubat 2025"),
    HomeTournamentModel(name: "Turnuva 3", date: "25 Şubat 2025"),
    HomeTournamentModel(name: "Turnuva 4", date: "13 Mart 2025"),
    HomeTournamentModel(name: "Turnuva 5", date: "18 Mart 2025"),
    HomeTournamentModel(name: "Turnuva 6", date: "20 Eylül 2025"),
    HomeTournamentModel(name: "Turnuva 7", date: "13 Eylül 2025"),
    HomeTournamentModel(name: "Turnuva 8", date: "13 Aralık 2025"),
  ]);
  static var participatedTurnaments =
      TournamentCardModel(cardTitle: "Katıldığım Turnuvalar", tournaments: [
    HomeTournamentModel(name: "Turnuva 1", date: "13 Ocak 2024"),
    HomeTournamentModel(name: "Turnuva 2", date: "14 Şubat 2024"),
    HomeTournamentModel(name: "Turnuva 3", date: "25 Şubat 2024"),
    HomeTournamentModel(name: "Turnuva 4", date: "13 Mart 2024"),
    HomeTournamentModel(name: "Turnuva 5", date: "18 Mart 2024"),
  ]);
}
