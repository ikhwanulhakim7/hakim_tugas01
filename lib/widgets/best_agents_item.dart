import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class bestAgents extends StatelessWidget {
  final String name;
  final int value;
  final image;
  const bestAgents({ Key? key, required this.name, required this.value, this.image }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(children: [
                      Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 226, 226, 226),
                      ), child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: image,
                  ),
                      ),
                      SizedBox(height: 15,),
                      Text(name,style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),),
                      SizedBox(height: 15,),
                      Text("${value} sold",style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),),
                    ]),
                  ),
                );
  }
}