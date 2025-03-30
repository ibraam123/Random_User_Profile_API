

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/user_data.dart';

class ProfileCardDetails extends StatelessWidget {
  const ProfileCardDetails({super.key , required this.userProfile});
  final UserProfileModel userProfile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 500,
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
            _buildUserInfo("City", userProfile.city ?? "N/A"),
            _buildUserInfo("Email", userProfile.email ?? "N/A"),
            _buildUserInfo("Phone Number", userProfile.phoneNumber ?? "N/A"),
            _buildUserInfo("Date of Birth", userProfile.dateOfBirth ?? "N/A"),
          ],
        ),
      ),
    );
  }
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
