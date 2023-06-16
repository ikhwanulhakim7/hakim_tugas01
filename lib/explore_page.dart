// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:belajar_flutter1/widgets/best_agents_item.dart';
import 'package:belajar_flutter1/widgets/circleItem.dart';
import 'package:belajar_flutter1/widgets/cities.dart';
import 'package:belajar_flutter1/widgets/header.dart';
import 'package:belajar_flutter1/widgets/staff_picks_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedLabelStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: "PSR"),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey, fontFamily: "PSR"),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.orange,
              ),
              label: 'Discover'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.tv_outlined), label: 'TV News'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: 'Settings'),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //header
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: const Header(),
            ),
            const SizedBox(height: 24),
            //Categories
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text(
                          "Categories",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        circleItem(title: "Hutan", image: Image.asset("assets/images/fi_Wind.png", scale: 2,)),
                        SizedBox(width: 20,),
                        circleItem(title: "Toko", image: Image.asset("assets/images/fi_shopping-bag.png", scale: 2,)),
                        SizedBox(width: 20,),
                        circleItem(title: "Cargo", image: Image.asset("assets/images/fi_truck.png", scale: 2,)),
                        SizedBox(width: 20,),
                        circleItem(title: "Weather ", image: Image.asset("assets/images/fi_cloud-drizzle.png", scale: 2,)),
                        SizedBox(width: 20,),
                        circleItem(title: "office", image: Image.asset("assets/images/fi_briefcase.png", scale: 2,)),
                        SizedBox(width: 20,),
                        circleItem(title: "Location", image: Icon(Icons.location_on_outlined)),
                        SizedBox(width: 20,)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text(
                          "Staff Picks",
                          style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      SizedBox(
                        width: 15,
                      ),
                      staffPicksItem(
                          image: Image.asset("assets/images/image_6.png"),
                          title: "Lagon Sky",
                          height: "412 sq ft.",
                          fee: "\$920"),
                      SizedBox(
                        width: 15,
                      ),
                      staffPicksItem(
                          image: Image.asset("assets/images/image_7.png"),
                          title: "Inn Parapat",
                          height: "800 sq ft.",
                          fee: "\$559"),
                      SizedBox(
                        width: 15,
                      ),
                      staffPicksItem(
                          image: Image.asset("assets/images/image_6.png"),
                          title: "Arman Village",
                          height: "0 sq ft.",
                          fee: "\$499"),
                      SizedBox(
                        width: 15,
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text(
                          "Best Agents",
                          style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        bestAgents(name: "Abili", value: 190, image: Image.asset("assets/images/image_71.png"),),
                        SizedBox(
                          width: 15,
                        ),
                        bestAgents(name: "Andika", value: 123, image: Image.asset("assets/images/image_73.png")),
                        SizedBox(
                          width: 15,
                        ),
                        bestAgents(name: "Syahlan", value: 111, image: Image.asset("assets/images/image_75.png")),
                        SizedBox(
                          width: 15,
                        ),
                        bestAgents(name: "Ihsan", value: 450, image: Image.asset("assets/images/image_71.png")),
                        SizedBox(
                          width: 15,
                        ),
                        bestAgents(name: "Ghaza", value: 250, image: Image.asset("assets/images/image_73.png")),
                        SizedBox(
                          width: 15,
                        ),
                        bestAgents(name: "Ghaza2", value: 25, image: Image.asset("assets/images/image_71.png")),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Cities",
                              style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              cities(title: "Jakarta Selatan", value: 194, image: Image.asset("assets/images/image_8.png"),),
                              SizedBox(
                                height: 15,
                              ),
                              cities(title: "Bandung", value: 89400, image: Image.asset("assets/images/image_9.png")),
                              SizedBox(
                                height: 15,
                              ),
                              cities(title: "Denpasar", value: 184000, image: Image.asset("assets/images/image_8.png")),
                              SizedBox(
                                height: 15,
                              ),
                              cities(title: "Pulau Banyak", value: 8300, image: Image.asset("assets/images/image_9.png")),
                              SizedBox(
                                height: 15,
                              ),
                              cities(title: "Singkil", value: 55, image: Image.asset("assets/images/image_8.png")),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            //
          ]),
        ),
      ),
    );
  }
}
