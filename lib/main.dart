import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartlock/views/homepage.dart';
import '/viewsmodels/home_viewmodel.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeViewModel()),
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
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
       /* '/login': (context) => const LoginPage(), // À créer
        '/profile': (context) => const ProfilePage(), // À créer
        '/lock': (context) => const LockPage(), // À créer
        '/add_lock': (context) => const AddLockPage(), // À créer
        '/notifications': (context) => const NotificationsPage(), // À créer*/
      },
    );
  }
}
