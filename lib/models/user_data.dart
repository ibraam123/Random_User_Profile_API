class UserProfileModel {
  final String imageProfileUrl;
  final String fullName;
  final String gender;
  final String country;
  final String? city;
  final String? email;
  final String? phoneNumber;
  final String? dateOfBirth;


  UserProfileModel({
    this.city,
    this.email,
    this.phoneNumber,
    this.dateOfBirth,
    required this.imageProfileUrl,
    required this.fullName,
    required this.gender,
    required this.country,
  });
}