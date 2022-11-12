import 'package:anirate/home_page.dart';
import 'package:anirate/profile_page.dart';
import 'package:anirate/search_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    SearchPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color(0xFF1E1E1E),
        destinations: const [
          NavigationDestination(
            icon: ImageIcon(
              AssetImage("images/home_icon.png"),
              color: Color(0xFFFFFFFF),
              size: 24,
            ),
            label: "Home",
          ),
          NavigationDestination(
            icon: ImageIcon(
              AssetImage("images/search_icon.png"),
              color: Color(0xFF7F7F7F),
              size: 24,
            ),
            label: "Search",
          ),
          NavigationDestination(
            icon: ImageIcon(
              AssetImage("images/profile_icon.png"),
              color: Color(0xFF7F7F7F),
              size: 24,
            ),
            label: "Profile",
          ),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
