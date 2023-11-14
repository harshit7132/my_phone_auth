import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'App_folder/Home_page/home_page.dart';
import 'Login_folder_screen/Signin_with_phone_screen/sign_in_with_phone.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const FlutterFireSeries());
}

class FlutterFireSeries extends StatelessWidget {
  const FlutterFireSeries({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (FirebaseAuth.instance.currentUser != null)
          ? const HomePage()
          : SignInWithPhoneScreen(),
    );
  }
}
