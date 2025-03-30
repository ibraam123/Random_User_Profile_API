import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_user_profile_app/widgets/list_random_users.dart';

import '../models/user_data.dart';
import '../services/get_random_users.dart';

class FutureBuilderList extends StatefulWidget {
  const FutureBuilderList({super.key});

  @override
  State<FutureBuilderList> createState() => _FutureBuilderListState();
}

class _FutureBuilderListState extends State<FutureBuilderList> {

  var future;

  @override
  void initState() {
    // TODO: implement initState
    future = GetRandomUserProfile(Dio()).getRandomUserProfile();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<UserProfileModel>>(
        future: future,
        builder: (context , snapshot){
          if(snapshot.hasData){
            return ListRandomUsers(userProfiles: snapshot.data!);
          }else{
            return Center(child: CircularProgressIndicator(
              color: Colors.lightGreen,
            ));
          }
        }
    );
  }
}
