import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gazesport/pages/jasamabar/profile_jasa_mabar.dart';
import 'package:gazesport/screens/widget/category_card.dart';
import 'package:gazesport/tournament/tour_aircrew_screen.dart';
import 'package:gazesport/tournament/tour_ladies_screen.dart';
import 'package:gazesport/tournament/tour_umum_screen.dart';
import 'package:gazesport/utils/constants.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGazCrl,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     const CircleAvatar(
                //       radius: 27,
                //       backgroundImage: AssetImage("assets/gaz.png"),
                //     ),
                //     const SizedBox(
                //       width: 15,
                //     ),
                //     RichText(
                //       text: const TextSpan(
                //           text: "hello",
                //           style: TextStyle(
                //               color: kBlackCrl,
                //               fontWeight: FontWeight.normal,
                //               fontSize: 16),
                //           children: [
                //             TextSpan(
                //                 text: ",Biz",
                //                 style: TextStyle(
                //                     fontWeight: FontWeight.bold, fontSize: 18))
                //           ]),
                //     ),
                //   ],
                // ),

                // const SizedBox(
                //   height: 15,
                // ),
                const Text(
                  "Cari Teman Mabar",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: kBlackCrl),
                ),
                const SizedBox(
                  height: 20,
                ),
                Material(
                  borderRadius: BorderRadius.circular(100),
                  elevation: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        color: kWhiteCrl,
                        borderRadius: BorderRadius.circular(100)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  hintText: "Cari teman mabar",
                                  prefixIcon: Icon(Icons.search),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),
                          const CircleAvatar(
                            radius: 22,
                            backgroundColor: kPrymaryClr,
                            child: Icon(
                              Icons.sort_by_alpha_sharp,
                              color: kWhiteCrl,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                //category
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      "Daftar Tournament",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          CategoryCard(
                            press: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TourUmumScreen()));
                            },
                            image: "assets/ml.png",
                            title: "Tournament Umum",
                          ),
                          CategoryCard(
                            press: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TourLadiesScreen()));
                            },
                            image: "assets/pubg.png",
                            title: "Tournament Ladies",
                          ),
                          CategoryCard(
                            press: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TourAirCrewScreen()));
                            },
                            image: "assets/ff.png",
                            title: "Tournament Aircrew",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //Rekomendasi
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      "Teman Mabar",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                    height: 350,
                    child: ListView.builder(
                        itemCount: 1,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 2),
                            child: GestureDetector(
                              onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MabarPage()))
                              },
                              child: Row(
                                children: [
                                  TemanMabar(),
                                ],
                              ),
                            ),
                          );
                        }))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Material TemanMabar() {
    return Material(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 320,
        width: 200,
        decoration: BoxDecoration(
            color: kWhiteCrl, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/mabar.jpg"),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("biz ganteng"),
                ),
                Icon(
                  Icons.star,
                  size: 15,
                  color: Colors.black,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                  color: Colors.black,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                  color: Colors.black,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                  color: Colors.black,
                ),
                Icon(
                  Icons.star,
                  size: 15,
                  color: Colors.black54,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
