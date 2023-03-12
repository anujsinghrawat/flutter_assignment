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
    apiKey: 'AIzaSyCrvTQMUeCOd0W05Eg7gRNraspL_yxDhr4',
    appId: '1:304282730177:web:b0d11cb27d82d5999d1e40',
    messagingSenderId: '304282730177',
    projectId: 'flutter-app-f3706',
    authDomain: 'flutter-app-f3706.firebaseapp.com',
    storageBucket: 'flutter-app-f3706.appspot.com',
    measurementId: 'G-XHCDHXVR23',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCyWVUogA9Av2bOjrWyuMJhb5lz8UrKxKw',
    appId: '1:304282730177:android:e51e6b7efcf249fc9d1e40',
    messagingSenderId: '304282730177',
    projectId: 'flutter-app-f3706',
    storageBucket: 'flutter-app-f3706.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBMx134W93HnI6Ge9mxp288GW_zuPd7ReA',
    appId: '1:304282730177:ios:8dccde04365d122c9d1e40',
    messagingSenderId: '304282730177',
    projectId: 'flutter-app-f3706',
    storageBucket: 'flutter-app-f3706.appspot.com',
    iosClientId: '304282730177-b7ufggbgnmviv5flu5lm6b98ig154j7d.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterAssignment',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBMx134W93HnI6Ge9mxp288GW_zuPd7ReA',
    appId: '1:304282730177:ios:8dccde04365d122c9d1e40',
    messagingSenderId: '304282730177',
    projectId: 'flutter-app-f3706',
    storageBucket: 'flutter-app-f3706.appspot.com',
    iosClientId: '304282730177-b7ufggbgnmviv5flu5lm6b98ig154j7d.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterAssignment',
  );
}
