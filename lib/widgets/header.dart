import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Estate",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Best Discovery Ever",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  // ignore: prefer_const_constructors
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      // color:const Color(0xffF7F6F9),
                      color: Colors.pink,
                      padding: const EdgeInsets.all(8),
                      child: const Icon(
                        Icons.notifications_outlined, 
                        size: 24,
                      )
                    ),
                  )
                ],
              ),
            );
  }
}