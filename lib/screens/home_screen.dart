import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../widgets/search_textfield_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTabIndex = 0;

  final List<Widget> _tabs = const [
    HomeTab(),
    CategoryTab(),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Expanded(
              child: SearchTextfieldWidget(
                labelText: "Search...",
              ),
            ),
            const SizedBox(width: 10),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColors.background),
              child: GestureDetector(
                onTap: () {
                  // Handle right icon tap
                  print("Notifications tapped");
                },
                child: Center(
                  child: Image.asset(
                    'assets/icons/send.png', // Replace with your asset path
                    width: 20, // Adjust size as needed
                    height: 20,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildTabButton("Popular", 0),
              _buildTabButton("Trending", 1),
              _buildTabButton("Following", 2),
            ],
          ),
          const SizedBox(height: 1), // Add some spacing below the buttons
          Expanded(
            child:
                _tabs[_selectedTabIndex], // Display the selected tab's content
          ),
        ],
      ),
    );
  }

  // Build Elevated Button for a Tab
  Widget _buildTabButton(String title, int index) {
    final isSelected = _selectedTabIndex == index;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Color(0xFFF1F1FE) : Colors.white,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 6),
      ),
      onPressed: () {
        setState(() {
          _selectedTabIndex = index;
        });
      },
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: isSelected ? FontWeight.w800 : FontWeight.w500,
          color: isSelected ? Color(0xFF5151C6) : AppColors.text,
        ),
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: const Center(
        child: Text(
          "Welcome to the Home Tab!",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Explore Categories Here!",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "View Your Profile Here!",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
