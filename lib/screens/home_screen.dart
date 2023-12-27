import 'package:flutter/material.dart';
import 'package:zoom_clone_flutter/resources/auth_methods.dart';
import 'package:zoom_clone_flutter/screens/history_meeting_screen.dart';
import 'package:zoom_clone_flutter/screens/meeting_screen.dart';
import 'package:zoom_clone_flutter/utils/colors.dart';
import 'package:zoom_clone_flutter/widgets/custom_button.dart';
// import 'package:zoom_clone_flutter/widgets/home_meeting_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final AuthMethods _authMethods = AuthMethods();
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  List<Widget> pages = [
    MeetingScreen(),
    const HistoryMeetingScreen(),
    const Center(
      child: Text('No Contacts Yet'),
    ),
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 35),
      width: double.infinity,
      child: CustomButton(
        text: 'Log Out',
        onPressed: () => AuthMethods().signOut(),
      ),
    ),
  ];

  List<String> pageTitle = [
    'Meet & Chat',
    'Meetings History',
    'Contacts',
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Text(pageTitle[_page]),
        centerTitle: true,
      ),
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor, // footer background color
        selectedItemColor: Colors.white, // color of selected item (only 1)
        unselectedItemColor:
            Colors.grey, // color of unselected items (multiple)
        // It returns a function with one int argument which is the item number we selected (0 indexed). You can see in the function definition that we are setting this item/page number to the global _page number.
        onTap: onPageChanged,
        // Make that item active or you can say, selected item
        currentIndex: _page,
        // You can comment this line to see what was happening before this line by selecting the items
        type: BottomNavigationBarType.fixed,
        // selectedFontSize: , // You can check by hovering over that default is 14, so we will set unselectedFontSize also to 14
        unselectedFontSize: 14,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.comment_bank),
            label: 'Meet & Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_clock),
            label: 'Meetings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
