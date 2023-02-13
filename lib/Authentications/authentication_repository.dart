import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:zai_system/Components/home_screen.dart';
import 'package:zai_system/View/verification_screen.dart';




class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verficationId = ''.obs;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null ? Get.offAll(() => const VerificationScr()) : Get.offAll(() => const HomeScreen());
  }

  Future<void> phoneAuthentication (String phoneNo) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
        verificationCompleted: (credential)async{
        await _auth.signInWithCredential(credential);
        },
        verificationFailed: (e){
        if(e.code == 'invalid-phone-number'){
          Get.snackbar('Error', 'The provider phone number is not valid.');
        }else{
          Get.snackbar('Error', 'Something went wrong. Try again.');
        }
        },
        codeSent: (verficationId, resendToken){
        this.verficationId.value = verficationId;
        },
        codeAutoRetrievalTimeout: (verificationId){
        this.verficationId.value = verificationId;
        }
    );
  }

  Future<bool> verifyOTP(String otp) async{
    var credentials = await _auth
        .signInWithCredential(PhoneAuthProvider.credential(verificationId: this.verficationId.value, smsCode: otp));
    return credentials.user != null ? true : false;
  }

  Future<void> logout() async => await _auth.signOut();
}