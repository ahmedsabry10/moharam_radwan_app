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
    apiKey: 'AIzaSyC47K9Cr512zrL_xBopc7_U84x31Lo20Fk',
    appId: '1:288667125691:web:746d7bbdbde238bcf9669e',
    messagingSenderId: '288667125691',
    projectId: 'boyo3-80a8b',
    authDomain: 'boyo3-80a8b.firebaseapp.com',
    storageBucket: 'boyo3-80a8b.appspot.com',
    measurementId: 'G-WZ5TPTK7T1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBmnIbMfmdaigNzY_iEwY4O5SPeLXHiyR0',
    appId: '1:288667125691:android:68c926f41522b997f9669e',
    messagingSenderId: '288667125691',
    projectId: 'boyo3-80a8b',
    storageBucket: 'boyo3-80a8b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCTtY6bx6V1cXSjE_-weq79_9XH3SvDXx0',
    appId: '1:288667125691:ios:61644d333606b51bf9669e',
    messagingSenderId: '288667125691',
    projectId: 'boyo3-80a8b',
    storageBucket: 'boyo3-80a8b.appspot.com',
    iosBundleId: 'com.example.moharamRadwan',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCTtY6bx6V1cXSjE_-weq79_9XH3SvDXx0',
    appId: '1:288667125691:ios:35aa6c312dc8d2d1f9669e',
    messagingSenderId: '288667125691',
    projectId: 'boyo3-80a8b',
    storageBucket: 'boyo3-80a8b.appspot.com',
    iosBundleId: 'com.example.moharamRadwan.RunnerTests',
  );
}