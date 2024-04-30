import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDbW3Q4OMFe6GM8DiXxklvzADv7ikUtjfk",
            authDomain: "item-trader-pqjhzi.firebaseapp.com",
            projectId: "item-trader-pqjhzi",
            storageBucket: "item-trader-pqjhzi.appspot.com",
            messagingSenderId: "1085998747750",
            appId: "1:1085998747750:web:4340da78efb7daa11edda7"));
  } else {
    await Firebase.initializeApp();
  }
}
