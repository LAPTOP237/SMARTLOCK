import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartlock/views/homepage.dart';
import 'package:smartlock/views/inscriptionpage.dart';
import 'package:smartlock/views/loginpage.dart';
import '/viewsmodels/home_viewmodel.dart';
import '/viewsmodels/login_viewmodel.dart';
import '/viewsmodels/signup_viewmodel.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeViewModel()),
        ChangeNotifierProvider(create: (_) => SignupViewModel()),
        ChangeNotifierProvider(create: (_) => LoginViewModel()),
      ],
      child: const SmartLockApp(),
    ),
  );
}

class SmartLockApp extends StatelessWidget {
  const SmartLockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Revo SmartLock',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: 'HappyMonkey', // Définit la police par défaut
      ),
      initialRoute: '/inscription',
      routes: {
        '/home': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/inscription': (context) => const InscriptionPage(),
        /* '/profile': (context) => const ProfilePage(), // À créer
        '/lock': (context) => const LockPage(), // À créer
        '/add_lock': (context) => const AddLockPage(), // À créer
        '/notifications': (context) => const NotificationsPage(), // À créer*/
      },
    );
  }
}
