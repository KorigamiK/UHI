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
    apiKey: 'AIzaSyB8_LwpgU0D8DIndNc1Byz17ZDMF9dYihE',
    appId: '1:179299234068:web:9de34569eba4d3b9a79201',
    messagingSenderId: '179299234068',
    projectId: 'abdm-uhi',
    authDomain: 'abdm-uhi.firebaseapp.com',
    storageBucket: 'abdm-uhi.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC4U4MikcTAP5NknjOCjpUtr-pRFa6l_Qo',
    appId: '1:179299234068:android:d768e073dba0f460a79201',
    messagingSenderId: '179299234068',
    projectId: 'abdm-uhi',
    storageBucket: 'abdm-uhi.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDp5zIaLzezMwXAZWAhTImR6hsfXBhZ5BM',
    appId: '1:179299234068:ios:1a131219b04db36ba79201',
    messagingSenderId: '179299234068',
    projectId: 'abdm-uhi',
    storageBucket: 'abdm-uhi.appspot.com',
    iosClientId: '179299234068-b5d97a2l1n6eodujoc5eq1mupfofjnd4.apps.googleusercontent.com',
    iosBundleId: 'in.abdm.gov.uhi.eua',
  );
}