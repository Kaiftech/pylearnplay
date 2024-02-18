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
    apiKey: 'AIzaSyD2Re-XqD8iZEmTmG0CVvSgzPcM7oEaEP0',
    appId: '1:999555455547:web:1b2cb13b809d627331da1e',
    messagingSenderId: '999555455547',
    projectId: 'pylearnplay-76d50',
    authDomain: 'pylearnplay-76d50.firebaseapp.com',
    storageBucket: 'pylearnplay-76d50.appspot.com',
    measurementId: 'G-LFCMPV3BEV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDCV6A-u_gsxtymZpD0eTr6WLRfXKQnpko',
    appId: '1:999555455547:android:2a19f103dd7d1eb531da1e',
    messagingSenderId: '999555455547',
    projectId: 'pylearnplay-76d50',
    storageBucket: 'pylearnplay-76d50.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDDHgeWZFo5I2uTZXcdm6enAzCVm2GqALc',
    appId: '1:999555455547:ios:e52719a74978adc831da1e',
    messagingSenderId: '999555455547',
    projectId: 'pylearnplay-76d50',
    storageBucket: 'pylearnplay-76d50.appspot.com',
    iosBundleId: 'com.example.pylearnplay',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDDHgeWZFo5I2uTZXcdm6enAzCVm2GqALc',
    appId: '1:999555455547:ios:7620ca5b22f00e2a31da1e',
    messagingSenderId: '999555455547',
    projectId: 'pylearnplay-76d50',
    storageBucket: 'pylearnplay-76d50.appspot.com',
    iosBundleId: 'com.example.pylearnplay.RunnerTests',
  );
}