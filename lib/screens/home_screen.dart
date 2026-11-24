import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bituon_mobprog/constants.dart';
import 'package:bituon_mobprog/screens/newsfeed_screen.dart';
import 'package:bituon_mobprog/screens/notification_screen.dart';
import 'package:bituon_mobprog/widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  String appTitle = 'EPBI';

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      appBar: AppBar(
        backgroundColor: backgroundColor,
        surfaceTintColor: backgroundColor,
        shadowColor: lightColor,
        elevation: 2,
        title: CustomText(
          text: appTitle,
          fontSize: ScreenUtil().setSp(25),
          color: primaryColor,
          fontFamily: 'Klavika',
          fontWeight: FontWeight.w700,
        ),
      ),

      body: PageView(
        controller: _pageController,
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
        children: const [
          NewsFeedScreen(),
          NotificationScreen(),
          Center(
            child: Text(
              'Profile',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              'Settings',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTappedBar,
        type: BottomNavigationBarType.fixed,

        showSelectedLabels: false,
        showUnselectedLabels: false,

        selectedItemColor: primaryColor,
        unselectedItemColor: mutedColor,
        backgroundColor: backgroundColor,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });

    _pageController.jumpToPage(value);
  }
}