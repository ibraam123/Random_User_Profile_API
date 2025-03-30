import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/future_builder_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<void> _refreshFuture;

  @override
  void initState() {
    super.initState();
    _refreshFuture = _loadUsers();
  }

  Future<void> _loadUsers() async {
    setState(() {}); // Triggers a UI rebuild
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff83BA43),
        title: const Text(
          'Random Profile Users',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.white),
            onPressed: () {
              setState(() {
                _refreshFuture = _loadUsers();
              });
            },
          ),
        ],
      ),
      body: FutureBuilderList(key: ValueKey(_refreshFuture)), // Forces update
    );
  }
}
