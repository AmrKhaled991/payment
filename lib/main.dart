import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';


import 'Payment/bloc_observe.dart';
import 'Payment/models/Apidata.dart';
import 'Payment/screens/Homepage/Homepage.dart';
import 'Payment/screens/pay/payscreen.dart';

void main() {
  Diohelper.init();
  Bloc.observer = MyBlocObserver();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: {
        Homepage.routname:(context) => Homepage(),
        payscreen.routname:(context) => payscreen(),
      },
      initialRoute: Homepage.routname,
    );
  }

}

