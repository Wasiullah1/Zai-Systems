import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:zai_system/Controller/splash_services.dart';
import 'package:zai_system/View/verification_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashScreen = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreen.isLogin(context);
  }

  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Image.asset('assests/splashScreen/spBlack.png'),
        nextScreen: const VerificationScr(),
      splashTransition: SplashTransition.fadeTransition,
      duration: 2500,
    );
  }
}
