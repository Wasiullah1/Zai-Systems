import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zai_system/Utils/utils.dart';
import 'package:zai_system/View/home.dart';
import 'package:zai_system/Widget/constants.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:zai_system/Widget/round_button.dart';

class OTPVerificationScr extends StatefulWidget {
  final String verificationId;
  const OTPVerificationScr({Key? key, required this.verificationId})
      : super(key: key);

  @override
  State<OTPVerificationScr> createState() => _OTPVerificationScrState();
}

class _OTPVerificationScrState extends State<OTPVerificationScr> {
  bool loading = false;
  final verficationCodeController = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.red, Colors.black])),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  const Image(
                      height: 150,
                      width: 150,
                      image: AssetImage('assests/splashScreen/spWhite.png')),
                  const Text(
                    'Building the Future with Tech',
                    style: TextStyle(
                        fontSize: 15,
                        color: whitecolor,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Enter OTP',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('Enter the 6 digits OTP that we sent',
                      style: TextStyle(
                          fontSize: 15,
                          color: whitecolor,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text('on your Number',
                      style: TextStyle(
                          fontSize: 15,
                          color: whitecolor,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: PinCodeTextField(
                        controller: verficationCodeController,
                        appContext: context,
                        length: 6,
                        keyboardType: TextInputType.number,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(10),
                          fieldWidth: 40,
                          fieldHeight: 50,
                        ),
                        onChanged: (value) {}),
                  ),
                  // const SizedBox(height: 1,),
                  // Padding(
                  //   padding: apppaddings,
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       const Text("Didn't receive OTP?"),
                  //
                  //       TextButton(
                  //           onPressed: (){
                  //
                  //           },
                  //           child: const Text('Resend OTP', style: TextStyle(color: whitecolor,fontSize: 15, fontWeight: FontWeight.bold,decoration: TextDecoration.underline),))
                  //     ],),
                  // ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: apppaddings,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundButton(
                            title: 'VERIFY & PROCEED',
                            loading: loading,
                            onTap: () async {
                              setState(() {
                                loading = true;
                              });

                              final crendital = PhoneAuthProvider.credential(
                                  verificationId: widget.verificationId,
                                  smsCode: verficationCodeController.text
                                      .toString());

                              try {
                                await auth.signInWithCredential(crendital);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Homescreen()));
                              } catch (e) {
                                setState(() {
                                  loading = false;
                                });
                                Utils().toastMessage(e.toString());
                              }
                            })
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
