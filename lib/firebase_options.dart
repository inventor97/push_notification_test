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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDMcKZfYSmGirOdVGOf2rcgRk1Fvn7P2Mo',
    appId: '1:648406575424:android:2dc71dbfab13d208b972a5',
    messagingSenderId: '648406575424',
    projectId: 'chat-3ca95',
    databaseURL: 'https://chat-3ca95.firebaseio.com',
    storageBucket: 'chat-3ca95.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAz79PuLmD_1oy0aY_m9gUZhlAM-dObyzs',
    appId: '1:648406575424:ios:7b8dd2e80b332f67b972a5',
    messagingSenderId: '648406575424',
    projectId: 'chat-3ca95',
    databaseURL: 'https://chat-3ca95.firebaseio.com',
    storageBucket: 'chat-3ca95.appspot.com',
    iosClientId: '648406575424-sv4t6472bfpgc2p9qog6niqn9htr1nnu.apps.googleusercontent.com',
    iosBundleId: 'com.example.pushNotificationTest',
  );
}