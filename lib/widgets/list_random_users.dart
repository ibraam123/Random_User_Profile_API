import 'package:flutter/cupertino.dart';
import 'package:random_user_profile_app/widgets/profile_card.dart';

import '../models/user_data.dart';

class ListRandomUsers extends StatelessWidget {
  const ListRandomUsers({super.key , required this.userProfiles});
  final List<UserProfileModel> userProfiles;


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: userProfiles.length,
        itemBuilder: (context , index){
          return ProfileCard(userProfile: userProfiles[index]);
        }
    );
  }
}

/**user press then back all details
 * */
