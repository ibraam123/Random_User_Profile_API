import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_user_profile_app/models/user_data.dart';
import 'package:random_user_profile_app/screens/user_details_profile_screen.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, required this.userProfile});
  final UserProfileModel userProfile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context , MaterialPageRoute(builder: (context) => UserDetailsProfileScreen(user: userProfile)));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity, // Take full width
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                blurRadius: 8,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Center content horizontally
            children: [
              ClipOval(
                child: Image.network(
                  userProfile.imageProfileUrl,
                  width: 120, // Smaller for better responsiveness
                  height: 120,
                  fit: BoxFit.cover, // Ensures the image fits inside the circle
                ),
              ),
              const SizedBox(height: 12), // Spacing between widgets
              _buildUserInfo("Full Name", userProfile.fullName),
              _buildUserInfo("Gender", userProfile.gender),
              _buildUserInfo("Country", userProfile.country),
            ],
          ),
        ),
      ),
    );
  }

  /// Helper method to create a responsive row of user info
  Widget _buildUserInfo(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Center content
        children: [
          Text(
            "$label: ",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          Flexible(
            child: Text(
              value,
              style: const TextStyle(fontSize: 16, color: Colors.black54),
              overflow: TextOverflow.ellipsis, // Prevent overflow issues
            ),
          ),
        ],
      ),
    );
  }
}
