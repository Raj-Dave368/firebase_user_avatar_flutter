import 'package:firebase_user_avatar_flutter/app/auth_widget.dart';
import 'package:firebase_user_avatar_flutter/services/firebase_auth_service.dart';
import 'package:firebase_user_avatar_flutter/services/firebase_storage_service.dart';
import 'package:firebase_user_avatar_flutter/services/firestore_service.dart';
import 'package:firebase_user_avatar_flutter/services/image_picker_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FirebaseAuthService>(
          builder: (_) => FirebaseAuthService(),
        ),
        Provider<ImagePickerService>(
          builder: (_) => ImagePickerService(),
        ),
        Provider<FirebaseStorageService>(
          builder: (_) => FirebaseStorageService(),
        ),
        Provider<FirestoreService>(
          builder: (_) => FirestoreService(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: AuthWidget(),
      ),
    );
  }
}
