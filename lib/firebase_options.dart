// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDaA2sDZOBitsBvlIjD-FikWw8FrV94d4g',
    appId: '1:1085167141755:web:ba12154a6cdffc75aa73de',
    messagingSenderId: '1085167141755',
    projectId: 'voajrgroup',
    authDomain: 'voajrgroup.firebaseapp.com',
    storageBucket: 'voajrgroup.appspot.com',
    measurementId: 'G-FEG72KFR35',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA2yC7XurHR5KQj7K2jChz08TAbxKvoPJo',
    appId: '1:1085167141755:android:36d7896d184e47a8aa73de',
    messagingSenderId: '1085167141755',
    projectId: 'voajrgroup',
    storageBucket: 'voajrgroup.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC8cyvm5dp0tBSOjKl635NI1RpK921aDag',
    appId: '1:1085167141755:ios:0d4e7c85a5e03c98aa73de',
    messagingSenderId: '1085167141755',
    projectId: 'voajrgroup',
    storageBucket: 'voajrgroup.appspot.com',
    iosBundleId: 'com.mycompany.voajrgroup',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC8cyvm5dp0tBSOjKl635NI1RpK921aDag',
    appId: '1:1085167141755:ios:d5579d93493c6568aa73de',
    messagingSenderId: '1085167141755',
    projectId: 'voajrgroup',
    storageBucket: 'voajrgroup.appspot.com',
    iosBundleId: 'com.example.voajrGroup',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDaA2sDZOBitsBvlIjD-FikWw8FrV94d4g',
    appId: '1:1085167141755:web:0869d794353eb3c8aa73de',
    messagingSenderId: '1085167141755',
    projectId: 'voajrgroup',
    authDomain: 'voajrgroup.firebaseapp.com',
    storageBucket: 'voajrgroup.appspot.com',
    measurementId: 'G-WHED3YDEHD',
  );
}
