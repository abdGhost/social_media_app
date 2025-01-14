import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/constant/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // List of screens
  final List<Widget> _screens = [
    const Center(
      child: Text(
        'Home Screen',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    ),
    const Center(
      child: Text(
        'Category Screen',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    ),
    const Center(
      child: Text(
        'Add Screen',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    ),
    const Center(
      child: Text(
        'Notifications Screen',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    ),
    const Center(
      child: Text(
        'Profile Screen',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 236, 236),
      body: _screens[_selectedIndex], // Display the selected screen
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        index: _selectedIndex, // Highlight the active index
        buttonBackgroundColor: Color.fromARGB(232, 81, 81, 198),
        backgroundColor: const Color.fromARGB(255, 236, 236, 236),
        items: [
          CurvedNavigationBarItem(
            child: Image.asset(
              'assets/navbar_icon/home.png',
              height: 30,
              color: _selectedIndex == 0 ? Colors.white : Colors.grey,
            ),
          ),
          CurvedNavigationBarItem(
            child: Image.asset(
              'assets/navbar_icon/category.png',
              height: 30,
              color: _selectedIndex == 1 ? Colors.white : Colors.grey,
            ),
          ),
          CurvedNavigationBarItem(
            child: Image.asset(
              'assets/navbar_icon/plus.png',
              height: 30,
            ),
          ),
          CurvedNavigationBarItem(
            child: Image.asset(
              'assets/navbar_icon/notification.png',
              height: 30,
              color: _selectedIndex == 3 ? Colors.white : Colors.grey,
            ),
          ),
          CurvedNavigationBarItem(
            child: Image.asset(
              'assets/navbar_icon/profile.png',
              height: 30,
              color: _selectedIndex == 4 ? Colors.white : Colors.grey,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Update selected index
          });
        },
      ),
    );
  }
}
