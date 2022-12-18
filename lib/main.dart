import 'package:flutter/material.dart';
import 'package:flash/screens/welcome_screen.dart';
import 'package:flash/screens/registration_screen.dart';
import 'package:flash/screens/login_screen.dart';
import 'package:flash/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  // Ensure that Firebase is initialized
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase
  await Firebase.initializeApp();
  //
  runApp(FlashChat());
}

String getScreen() {
  if (FirebaseAuth.instance.currentUser != null) {
    return ChatScreen.id;
  } else {
    return WelcomeScreen.id;
  }
}

class FlashChat extends StatelessWidget {
  const FlashChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: WelcomeScreen(),
      initialRoute: getScreen(),
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen()
      },
    );
  }
}
