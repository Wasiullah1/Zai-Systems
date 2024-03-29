// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDrZXRLOnXhVP-8FZhHJZVfccfC9JbKCZg',
    appId: '1:636439448051:web:03717a31c747fbf9e1aa86',
    messagingSenderId: '636439448051',
    projectId: 'zai-system-app',
    authDomain: 'zai-system-app.firebaseapp.com',
    storageBucket: 'zai-system-app.appspot.com',
    measurementId: 'G-8Q3Q5PDCEQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAoOP2hi4bqtXeTD5AYj14cFBrVT6Boyoo',
    appId: '1:636439448051:android:abfdac68c29d187de1aa86',
    messagingSenderId: '636439448051',
    projectId: 'zai-system-app',
    storageBucket: 'zai-system-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-7CBoSFBfokoHeSPswNdB22uuz9V0e2w',
    appId: '1:636439448051:ios:2a62ebee722ae36de1aa86',
    messagingSenderId: '636439448051',
    projectId: 'zai-system-app',
    storageBucket: 'zai-system-app.appspot.com',
    androidClientId: '636439448051-8ih526euqf74mgrog1e7diubq40sh0mv.apps.googleusercontent.com',
    iosClientId: '636439448051-8b4d74t2nh2ujupieqsf8v32b5gdps9k.apps.googleusercontent.com',
    iosBundleId: 'com.example.zaiSystem',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA-7CBoSFBfokoHeSPswNdB22uuz9V0e2w',
    appId: '1:636439448051:ios:2a62ebee722ae36de1aa86',
    messagingSenderId: '636439448051',
    projectId: 'zai-system-app',
    storageBucket: 'zai-system-app.appspot.com',
    androidClientId: '636439448051-8ih526euqf74mgrog1e7diubq40sh0mv.apps.googleusercontent.com',
    iosClientId: '636439448051-8b4d74t2nh2ujupieqsf8v32b5gdps9k.apps.googleusercontent.com',
    iosBundleId: 'com.example.zaiSystem',
  );
}
