import 'package:domiat/View/OnBordingView.dart';
import 'package:domiat/componets/defaultCS.dart';
import 'package:domiat/viewmodel/HomeViewModel.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'View/HomeView.dart';
import 'rep/repositry.dart';

late SharedPreferences pref;
HomeViewModel hvm = HomeViewModel(); // for access at HomeViewModel class
Repo repo = Repo(); // for access at Repo class
void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //
  pref = await SharedPreferences
      .getInstance(); // here i use this line for initial sheardprefrenses

  // for retrive points from local database
 pref.containsKey('points') ?HomeViewModel.points  = repo.getInt(key: 'points')! : 0 ;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: defautlColor), home: OnBordingView());
  }
}
