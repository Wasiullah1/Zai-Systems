import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zai_system/View/home.dart';
import 'package:zai_system/View/verification_screen.dart';

class SplashServices {
  void isLogin(BuildContext context){
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;

    if(user != null){
      Timer(const Duration(seconds: 3),
          ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const Homescreen())),
      );
    }else{
      Timer(const Duration(seconds: 3),
      ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const VerificationScr())),
      );
    }
  }
}