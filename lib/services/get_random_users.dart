import 'package:dio/dio.dart';
import 'package:random_user_profile_app/models/user_data.dart';

class GetRandomUserProfile{
  GetRandomUserProfile(this.dio);
  final Dio dio;

  Future<List<UserProfileModel>> getRandomUserProfile() async {
    Response response = await dio.get('https://randomuser.me/api/?results=10');
    Map<String , dynamic> data = response.data;
    List<dynamic> results = data['results'];
    List<UserProfileModel> userProfileList = [];
    for (var user in results) {
      UserProfileModel userProfileModel = UserProfileModel(
        imageProfileUrl: user['picture']['medium'],
        fullName: '${user['name']['first']} ${user['name']['last']}',
        gender: user['gender'],
        country: user['location']['country'],
        city: user['location']['city'],
        email: user['email'],
        phoneNumber: user['phone'],
        dateOfBirth: user['dob']['date'],
      );
      userProfileList.add(userProfileModel);
    }
    return userProfileList;
  }

  Future<UserProfileModel> getRandomUserProfileDetails(int position, List<UserProfileModel> userProfileList) async {
    if (userProfileList.isEmpty || position < 0 || position >= userProfileList.length) {
      throw Exception('Invalid position or empty user list');
    }

    UserProfileModel userProfileModel = userProfileList[position];

    // Return the selected user profile
    return userProfileModel;
  }





}