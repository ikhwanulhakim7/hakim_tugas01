import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              child: Image.network(
              "https://static.vecteezy.com/system/resources/thumbnails/006/476/125/small/the-chibi-character-head-gojo-in-the-jujutsu-kaisen-anime-series-vector.jpg",
              height: 90,
              width: 90,          
            )
            ),
              Container(
              color: Colors.blue,
              child: Image.asset(
              "assets/gojo.jpg",
              height: 90,
              width: 90,          
            )
            ),const SizedBox(height: 30,),
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: const Text("Kembali Ke halaman Sebeklumnya"),
              )

          ],
        ),
      ),
    );
  }
}