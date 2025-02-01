import 'package:flutter/material.dart';
import 'bottom_nav.dart';
import '../../viewsmodels/home_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeViewModel = Provider.of<HomeViewModel>(context);
    final bool isConnected = homeViewModel.isConnected;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/logo.svg', // Le logo ici
              height: 30,
            ),
            const SizedBox(width: 10),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Image.asset('assets/logo1.png', width: 500, height: 500), // Image statique du cadenas
      ),
      bottomNavigationBar: BottomNav(isConnected: isConnected),
    );
  }
}


