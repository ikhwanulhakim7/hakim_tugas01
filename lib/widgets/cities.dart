import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cities extends StatelessWidget {
  final String title;
  final int value;
  final image;
  const cities({ Key? key, required this.title, required this.value, this.image }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: image,
                          )
                        ),
                        SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(title, style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),),
                          SizedBox(height: 5,),
                          Text("${value} Property", style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),),
                        ],)
                      ]),
                    ),
                  );
  }
}