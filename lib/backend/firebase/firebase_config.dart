import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDaA2sDZOBitsBvlIjD-FikWw8FrV94d4g",
            authDomain: "voajrgroup.firebaseapp.com",
            projectId: "voajrgroup",
            storageBucket: "voajrgroup.appspot.com",
            messagingSenderId: "1085167141755",
            appId: "1:1085167141755:web:ba12154a6cdffc75aa73de",
            measurementId: "G-FEG72KFR35"));
  } else {
    await Firebase.initializeApp();
  }
}
