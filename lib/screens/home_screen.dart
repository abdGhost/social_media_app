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
    PopularTab(),
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

class PopularTab extends StatelessWidget {
  const PopularTab({super.key});

  // Sample data for the cards
  final List<Map<String, dynamic>> cardData = const [
    {
      'profileImage': 'assets/cards/profile.png',
      'username': 'Ghost',
      'time': '1 hour ago',
      'postImage': 'assets/cards/p1.png',
      'likes': 20,
      'comments': 20,
    },
    {
      'profileImage': 'assets/cards/profile.png',
      'username': 'Phantom',
      'time': '2 hours ago',
      'postImage': 'assets/cards/p1.png',
      'likes': 30,
      'comments': 15,
    },
    {
      'profileImage': 'assets/cards/profile.png',
      'username': 'Shadow',
      'time': '3 hours ago',
      'postImage': 'assets/cards/p1.png',
      'likes': 50,
      'comments': 25,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: ListView.builder(
        itemCount: cardData.length,
        padding: const EdgeInsets.all(8.0),
        itemBuilder: (context, index) {
          final card = cardData[index];
          return Card(
            color: Colors.white,
            elevation: 0,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Image.asset(
                        card['profileImage'],
                        width: 30,
                        height: 30,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        card['username'],
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        card['time'],
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.text,
                        ),
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(6),
                    topRight: Radius.circular(6),
                  ),
                  child: Image.asset(
                    card['postImage'],
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/plus-circle.png',
                        width: 20,
                        height: 20,
                        fit: BoxFit.contain,
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Text(
                            '${card['comments']}',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.text,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Image.asset(
                            'assets/icons/chat.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                      const SizedBox(width: 14),
                      Row(
                        children: [
                          Text(
                            '${card['likes']}',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.text,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Image.asset(
                            'assets/icons/heart.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
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
