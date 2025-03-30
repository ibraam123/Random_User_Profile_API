import 'package:flutter/cupertino.dart';
import 'package:random_user_profile_app/models/user_data.dart';
import 'package:flutter/material.dart';
import 'package:random_user_profile_app/widgets/profile_card_details.dart';

class UserDetailsProfileScreen extends StatelessWidget {
  const UserDetailsProfileScreen({super.key , required this.user});
  final UserProfileModel user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          backgroundColor: const Color(0xff83BA43),
          title: const Text(
            'Profile User Details',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          ),
       ),
      body: ProfileCardDetails(userProfile: user),
    );
  }
}
