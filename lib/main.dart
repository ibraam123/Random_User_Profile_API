import 'package:flutter/material.dart';
import 'package:random_user_profile_app/screens/home_screen.dart';

void main() {
  runApp(RandomUserProfileApp());
}

class RandomUserProfileApp extends StatelessWidget {
  const RandomUserProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.system,
      title: 'Random User Profile App',
      home: const HomeScreen(),
    );
  }
}
