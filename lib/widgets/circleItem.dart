import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class circleItem extends StatelessWidget {

  final String title;
  final image;

  const circleItem({ Key? key, required this.title, required this.image }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: image
                ),
              ),
              SizedBox(height: 8,),
              Text(title, style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ]),
          );
  }
}