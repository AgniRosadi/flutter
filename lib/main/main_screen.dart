import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:gazesport/pages/chat/chat_page.dart';
import 'package:gazesport/pages/profiles/profiles_page.dart';
import 'package:gazesport/pages/live_page/live_page.dart';
import 'package:gazesport/screens/home_page.dart';
import 'package:gazesport/utils/constants.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  //List page
  List<Widget> pageList = <Widget>[
    const HomePage(),
    const TournamentPage(),
    const ChatPage(),
    const ProfilesPage()
  ];

//list page icons
  List<IconData> iconList = [
    Icons.home,
    Icons.gamepad,
    Icons.chat,
    Icons.people,
  ];

  //list page title
  List<String> titleList = ['Home', 'Siaran', 'Pesan', 'Profile'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleList[pageIndex],
              style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            ),
            const Icon(
              Icons.notifications,
              color: Colors.purple,
              size: 30.0,
            )
          ],
        ),
        backgroundColor: kGazCrl,
        elevation: 0.0,
      ),
      // body: pageList[pageIndex],
      body: PageTransitionSwitcher(
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
            FadeThroughTransition(
          animation: primaryAnimation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        ),
        child: pageList[pageIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kGazCrl,
        selectedIconTheme: const IconThemeData(color: Colors.purple),
        selectedItemColor: Colors.black,
        unselectedItemColor: kBlackCrl.withOpacity(0.32),
        currentIndex: pageIndex,
        onTap: ((value) {
          setState(() {
            pageIndex = value;
          });
        }),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.replay_outlined), label: "Siaran"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: "chat"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
