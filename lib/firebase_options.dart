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
    apiKey: 'AIzaSyCa3hInt5ub0G3auWfv92ke8G0-CRlx2e8',
    appId: '1:941718438502:web:57c5a0ba9268bef4c523a7',
    messagingSenderId: '941718438502',
    projectId: 'proyecto-repartir-52daa',
    authDomain: 'proyecto-repartir-52daa.firebaseapp.com',
    storageBucket: 'proyecto-repartir-52daa.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAb9SrvV2JQlS-LxeBJYJGN-Sgtgo2rY6Q',
    appId: '1:941718438502:android:165ffea6a7f901aac523a7',
    messagingSenderId: '941718438502',
    projectId: 'proyecto-repartir-52daa',
    storageBucket: 'proyecto-repartir-52daa.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQrmY3i50IzfI14m8H0C-269UggC-xzGs',
    appId: '1:941718438502:ios:b822f4a65041e92ac523a7',
    messagingSenderId: '941718438502',
    projectId: 'proyecto-repartir-52daa',
    storageBucket: 'proyecto-repartir-52daa.appspot.com',
    iosBundleId: 'com.example.proyecto',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAQrmY3i50IzfI14m8H0C-269UggC-xzGs',
    appId: '1:941718438502:ios:c7d1dfb527f79fd6c523a7',
    messagingSenderId: '941718438502',
    projectId: 'proyecto-repartir-52daa',
    storageBucket: 'proyecto-repartir-52daa.appspot.com',
    iosBundleId: 'com.example.proyecto.RunnerTests',
  );
}
