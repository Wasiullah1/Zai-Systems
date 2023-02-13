import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zai_system/View/home.dart';
import 'package:zai_system/View/loginscreen.dart';
import 'package:zai_system/Widget/constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(gradient: LinearGradient(begin: Alignment.bottomCenter, end: Alignment.topCenter, colors: [Colors.red,Colors.black])),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Image( height: 150, width: 150, image: AssetImage('assests/splashScreen/spWhite.png')),
                  const Text('Create Account', style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,),
                  const Text('Building the Future with Tech', style: TextStyle(fontSize:15,color:whitecolor,fontWeight: FontWeight.w500),),
                  const SizedBox(height: 50,),
                  Padding(
                    padding:apppaddings,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'FULL NAME',
                        hintStyle: const TextStyle(fontFamily: 'Rubik Medium',fontSize: 16),
                        fillColor: const Color(0xffF8F9FA),
                        filled: true,
                        prefixIcon: const Icon(Icons.person_outlined,color: iconcolor,),
                        focusedBorder: fbbutton,
                        enabledBorder: ebbutton,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Padding(
                    padding:apppaddings,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'EMAIL',
                        hintStyle: const TextStyle(fontFamily: 'Rubik Medium',fontSize: 16),
                        fillColor: const Color(0xffF8F9FA),
                        filled: true,
                        prefixIcon: const Icon(Icons.email_outlined,color: iconcolor,),
                        focusedBorder: fbbutton,
                        enabledBorder: ebbutton,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Padding(
                    padding:apppaddings,
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: 'PASSWORD',
                        hintStyle: const TextStyle(fontFamily: 'Rubik Medium',fontSize: 16),

                        fillColor: const Color(0xffF8F9FA),
                        filled: true,
                        prefixIcon: const Icon(Icons.lock_outlined,color: iconcolor,),
                        suffixIcon: const Icon(Icons.remove_red_eye_outlined,color: iconcolor,),
                        focusedBorder:fbbutton,
                        enabledBorder: ebbutton,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Padding(
                    padding:apppaddings,
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: 'CONFIRM PASSWORD',
                        hintStyle: const TextStyle(fontFamily: 'Rubik Medium',fontSize: 16),

                        fillColor: const Color(0xffF8F9FA),
                        filled: true,
                        prefixIcon: const Icon(Icons.lock_outlined,color: iconcolor,),
                        suffixIcon: const Icon(Icons.remove_red_eye_outlined,color: iconcolor,),
                        focusedBorder:fbbutton,
                        enabledBorder: ebbutton,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50,),
                  Padding(
                    padding:apppaddings,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: redcolor,
                              borderRadius: BorderRadius.circular(20)),
                          height: 50,
                          width: 150,
                          child: TextButton(
                            child: Center(child: Text('SIGN UP',
                              style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontFamily: 'Rubik Medium',),
                            ),
                            ),
                            onPressed: () => Get.to(Homescreen()),
                          ),
                        ),


                      ],),
                  ),
                  Padding(padding: const EdgeInsets.symmetric(vertical: 47),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account?",style: TextStyle(fontSize: 15,color: whitecolor),),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                          },
                              child: const Text('Log In', style: TextStyle(fontWeight:FontWeight.bold,color: Colors.black,fontSize: 15)))
                        ],)
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
