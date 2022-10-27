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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDN-hgvPbn2UTkFK7y0lZmgGQE1kYP33ts',
    appId: '1:827148747554:web:68a6d2d4c41715b7a59b7b',
    messagingSenderId: '827148747554',
    projectId: 'testingp-rojects',
    authDomain: 'testingp-rojects.firebaseapp.com',
    storageBucket: 'testingp-rojects.appspot.com',
    measurementId: 'G-2BHVHX5GVL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAs0OXgwhP0J6gwhQChlg1M1oVw-IFh6fM',
    appId: '1:827148747554:android:f4797a2e443f857ca59b7b',
    messagingSenderId: '827148747554',
    projectId: 'testingp-rojects',
    storageBucket: 'testingp-rojects.appspot.com',
  );
}