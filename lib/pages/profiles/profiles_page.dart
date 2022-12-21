import 'package:flutter/material.dart';
import 'package:gazesport/pages/profiles/profile_user_detail/profile_user_detail.dart';
import 'package:gazesport/pages/widget/profile_widget.dart';
import 'package:get/get.dart';

import '../../tournament/tour_ladies_screen.dart';
// import 'package:flutter_onboarding/Constants.dart';

class ProfilesPage extends StatefulWidget {
  const ProfilesPage({super.key});

  @override
  State<ProfilesPage> createState() => _ProfilesPageState();
}

class _ProfilesPageState extends State<ProfilesPage> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          // height: 320,
          // width: 320,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 150,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.black87.withOpacity(.5), width: 4.0)),
                child: const CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.transparent,
                  backgroundImage: ExactAssetImage('assets/gaz.png'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 320,
                child: Center(
                  child: Text('Bizz',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600)),
                ),
              ),
              Text(
                'izzufirdaus@gmail.com',
                style: TextStyle(
                  color: Colors.black87.withOpacity(.3),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              SizedBox(
                // height: 320,
                // width: 320,
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileUserDetail()))
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      ProfileWidget(
                        icon: Icons.person,
                        title: 'My Profile',
                      ),
                      ProfileWidget(
                        icon: Icons.settings,
                        title: 'Sttings',
                      ),
                      ProfileWidget(
                        icon: Icons.notifications,
                        title: 'Notifications',
                      ),
                      ProfileWidget(
                        icon: Icons.chat,
                        title: 'FAQs',
                      ),
                      ProfileWidget(
                        icon: Icons.share,
                        title: 'Share',
                      ),
                      ProfileWidget(
                        icon: Icons.logout,
                        title: 'Log Out',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
