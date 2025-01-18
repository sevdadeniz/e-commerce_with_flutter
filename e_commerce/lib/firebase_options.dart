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
    apiKey: 'AIzaSyC3L9NaQbMP79cR4z-gjqQ18nAateKvStk',
    appId: '1:52639745563:web:cf6aab2f5e1df85e8ddabe',
    messagingSenderId: '52639745563',
    projectId: 'e-commerce-withfirebaseproject',
    authDomain: 'e-commerce-withfirebaseproject.firebaseapp.com',
    storageBucket: 'e-commerce-withfirebaseproject.firebasestorage.app',
    measurementId: 'G-GY3TJBPDQX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDHEr9OzxlsNmNYk7sGOeP0tUZv-44RVmA',
    appId: '1:52639745563:android:a1b2c9c61e9f9fd78ddabe',
    messagingSenderId: '52639745563',
    projectId: 'e-commerce-withfirebaseproject',
    storageBucket: 'e-commerce-withfirebaseproject.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBZsI1xh3gVNlxzwiSXBr25dcIxgcOrfaw',
    appId: '1:52639745563:ios:9d0eaaafff066a9e8ddabe',
    messagingSenderId: '52639745563',
    projectId: 'e-commerce-withfirebaseproject',
    storageBucket: 'e-commerce-withfirebaseproject.firebasestorage.app',
    iosBundleId: 'com.example.eCommerce',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBZsI1xh3gVNlxzwiSXBr25dcIxgcOrfaw',
    appId: '1:52639745563:ios:9d0eaaafff066a9e8ddabe',
    messagingSenderId: '52639745563',
    projectId: 'e-commerce-withfirebaseproject',
    storageBucket: 'e-commerce-withfirebaseproject.firebasestorage.app',
    iosBundleId: 'com.example.eCommerce',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC3L9NaQbMP79cR4z-gjqQ18nAateKvStk',
    appId: '1:52639745563:web:fb0c9f0dfdd69e7e8ddabe',
    messagingSenderId: '52639745563',
    projectId: 'e-commerce-withfirebaseproject',
    authDomain: 'e-commerce-withfirebaseproject.firebaseapp.com',
    storageBucket: 'e-commerce-withfirebaseproject.firebasestorage.app',
    measurementId: 'G-6D0L4Z24ST',
  );

}