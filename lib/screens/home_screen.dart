import 'package:flutter/material.dart';
import '../widgets/bottom_navigation_bar_Item_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = "Home_Screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<String> images = [
    'assets/images/quran_bg.png',
    'assets/images/hadeth_bg.png',
    'assets/images/sebha_bg.png',
    'assets/images/radio_bg.png',
    'assets/images/time_bg.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(images[selectedIndex]),
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              buildNavItem(asset: 'quran', label: 'Quran'),
              buildNavItem(asset: 'hadeth', label: 'Hadeth'),
              buildNavItem(asset: 'sebha', label: 'Sebha'),
              buildNavItem(asset: 'radio', label: 'Radio'),
              buildNavItem(asset: 'time', label: 'Time'),
            ],
          ),
        ),
      ],
    );
  }
}
