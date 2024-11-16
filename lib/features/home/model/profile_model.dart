class ProfileModel {
  final String fullName;
  final String userName;
  final String phoneNumber;
  final String email;
  final String profilePhoto;
  final String lastSignInDate;

  ProfileModel(
      {required this.fullName,
      required this.userName,
      required this.phoneNumber,
      required this.email,
      required this.profilePhoto,
      required this.lastSignInDate});
}
