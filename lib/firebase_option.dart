// File generated by FlutterFire CLI.

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show kIsWeb;

class DefaultFirebaseOptions {
  static FirebaseOptions? flavorConfig() {
    if (kIsWeb) {
      return web;
    }
    return null;
    // // ignore: missing_enum_constant_in_switch
    // switch (defaultTargetPlatform) {
    //   case TargetPlatform.android:
    //     return android;
    //   case TargetPlatform.iOS:
    //     return ios;
    //   case TargetPlatform.macOS:
    //     return macos;
    // }

    // throw UnsupportedError(
    //   'DefaultFirebaseOptions are not supported for this platform.',
    // );
  }

  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
  static const FirebaseOptions web = FirebaseOptions(
      apiKey: "AIzaSyDCRy3TTWp_MEPfyGb1EBGQS1NlNxP-4qc",
      authDomain: "portfolio-7e43c.firebaseapp.com",
      databaseURL: "https://portfolio-7e43c.firebaseio.com",
      projectId: "portfolio-7e43c",
      storageBucket: "portfolio-7e43c.appspot.com",
      messagingSenderId: "334432509161",
      appId: "1:334432509161:web:f609456cb14f56c0776478",
      measurementId: "G-92SYW4VJNF");
}
