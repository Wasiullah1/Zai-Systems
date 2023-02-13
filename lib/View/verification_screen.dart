import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zai_system/Utils/utils.dart';
import 'package:zai_system/View/otp_verification2.dart';
import 'package:zai_system/Widget/constants.dart';
import 'package:zai_system/Widget/round_button.dart';

class VerificationScr extends StatefulWidget {
  const VerificationScr({Key? key}) : super(key: key);

  @override
  State<VerificationScr> createState() => _VerificationScrState();
}

class _VerificationScrState extends State<VerificationScr> {
  bool loading = false;
  final phoneNumberController = TextEditingController();
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
                    'OTP Verification',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('Enter your phone number to receive',
                      style: TextStyle(
                          fontSize: 15,
                          color: whitecolor,
                          fontWeight: FontWeight.w500)),
                  const Text('verification code',
                      style: TextStyle(
                          fontSize: 15,
                          color: whitecolor,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: apppaddings,
                    child: TextFormField(
                      controller: phoneNumberController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: '+92300 1234567',
                        hintStyle: const TextStyle(
                            fontFamily: 'Rubik Medium', fontSize: 16),
                        fillColor: const Color(0xffF8F9FA),
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.perm_contact_cal_outlined,
                          color: iconcolor,
                        ),
                        focusedBorder: fbbutton,
                        enabledBorder: ebbutton,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  Padding(
                    padding: apppaddings,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundButton(
                          title: 'GET OTP',
                          loading: loading,
                          onTap: () {
                            setState(() {
                              loading = true;
                            });

                            auth.verifyPhoneNumber(
                                phoneNumber: phoneNumberController.text,
                                verificationCompleted: (_) {
                                  setState(() {
                                    loading = false;
                                  });
                                },
                                verificationFailed: (e) {
                                  setState(() {
                                    loading = false;
                                  });
                                  Utils().toastMessage(e.toString());
                                },
                                codeSent: (String verificationId, int? token) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              OTPVerificationScr(
                                                verificationId: verificationId,
                                              )));
                                  setState(() {
                                    loading = false;
                                  });
                                },
                                codeAutoRetrievalTimeout: (e) {
                                  Utils().toastMessage(e.toString());
                                  setState(() {
                                    loading = false;
                                  });
                                });
                          },
                        )
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
