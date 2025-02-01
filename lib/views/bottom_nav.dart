import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class BottomNav extends StatelessWidget {
  final bool isConnected;

  const BottomNav({super.key, required this.isConnected});

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        if (isConnected) {
          Navigator.pushNamed(context, '/lock');
        } else {
          Navigator.pushNamed(context, '/login');
        }
        break;
      case 2:
        if (isConnected) {
          Navigator.pushNamed(context, '/add_lock');
        } else {
          Navigator.pushNamed(context, '/login');
        }
        break;
      case 3:
        if (isConnected) {
          Navigator.pushNamed(context, '/notifications');
        } else {
          Navigator.pushNamed(context, '/login');
        }
        break;
      case 4:
        if (isConnected) {
          Navigator.pushNamed(context, '/profile');
        } else {
          Navigator.pushNamed(context, '/login');
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color.fromARGB(255, 158, 101, 1),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black54,
      onTap: (index) => _onItemTapped(context, index),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(LucideIcons.lock), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ],
    );
  }
}
