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
    apiKey: 'AIzaSyCcDjiEjBhbVYUtQVBO37FntEMD6pCmzw8',
    appId: '1:727583037450:web:dbe41be3f3f6c849c867f3',
    messagingSenderId: '727583037450',
    projectId: 'foodapp-9c7f1',
    authDomain: 'foodapp-9c7f1.firebaseapp.com',
    storageBucket: 'foodapp-9c7f1.appspot.com',
    measurementId: 'G-1R5SB2FLXM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBzYHnqSLYTfFzOt-JBbQyeqXcOTfmVlXs',
    appId: '1:727583037450:android:021ca48334781f05c867f3',
    messagingSenderId: '727583037450',
    projectId: 'foodapp-9c7f1',
    storageBucket: 'foodapp-9c7f1.appspot.com',
  );
}
