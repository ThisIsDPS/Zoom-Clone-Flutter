import 'package:flutter/material.dart';
import 'package:zoom_clone_flutter/utils/colors.dart';
import 'package:zoom_clone_flutter/widgets/home_meeting_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: const Text('Meet & Chat'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeMeetingButton(
                onPressed: () {},
                text: 'New Meeting',
                icon: Icons.videocam,
              ),
              HomeMeetingButton(
                onPressed: () {},
                text: 'Join Meeting',
                icon: Icons.add_box_rounded,
              ),
              HomeMeetingButton(
                onPressed: () {},
                text: 'Schedule',
                icon: Icons.calendar_today,
              ),
              HomeMeetingButton(
                onPressed: () {},
                text: 'Share Screen',
                icon: Icons.arrow_upward_rounded,
              ),
            ],
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Create/Join Meetings with just a click!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
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
