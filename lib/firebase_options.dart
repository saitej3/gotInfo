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
    apiKey: 'AIzaSyChADJ6qyQtfDSAR2b7unjnCmS6jkrQ9bE',
    appId: '1:251660581003:web:f872aaaf41fd7d39be7c8e',
    messagingSenderId: '251660581003',
    projectId: 'got-info-flutter',
    authDomain: 'got-info-flutter.firebaseapp.com',
    storageBucket: 'got-info-flutter.appspot.com',
    measurementId: 'G-NNHLYWFS16',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBrq0bbJqQktO5W8hy9S-rLTnoeAg1VIgs',
    appId: '1:251660581003:android:657927a963fc3106be7c8e',
    messagingSenderId: '251660581003',
    projectId: 'got-info-flutter',
    storageBucket: 'got-info-flutter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBJ_ollb19uhXkzGV-vaWHEVU8r5gJq0F0',
    appId: '1:251660581003:ios:87a72f67b299afd7be7c8e',
    messagingSenderId: '251660581003',
    projectId: 'got-info-flutter',
    storageBucket: 'got-info-flutter.appspot.com',
    iosClientId: '251660581003-oltng1edhr48asv102j2kgonk3np10am.apps.googleusercontent.com',
    iosBundleId: 'com.example.gotInfo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBJ_ollb19uhXkzGV-vaWHEVU8r5gJq0F0',
    appId: '1:251660581003:ios:dd1d326aee2b9b89be7c8e',
    messagingSenderId: '251660581003',
    projectId: 'got-info-flutter',
    storageBucket: 'got-info-flutter.appspot.com',
    iosClientId: '251660581003-nij1eq2lu45ftmohcmcvp7ijf6vd6ctu.apps.googleusercontent.com',
    iosBundleId: 'com.example.gotInfo.RunnerTests',
  );
}
