
class Users {
  Users(
      {required this.userName,
        required this.profileUrl,
        required this.countryIconUrl});

  final String userName;
  final String? profileUrl;
  final String countryIconUrl;
}

final usersModel = [
  Users(
      userName: 'Sandeep',
      profileUrl: 'assets/images/india.jpeg',
      countryIconUrl: 'assets/images/india.jpeg'),
  Users(
      userName: 'Surya',
      profileUrl: 'assets/images/india.jpeg',
      countryIconUrl: 'assets/images/india.jpeg'),
];