import 'package:belajar_flutter1/second_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],

      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Tutor Flutter"
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            color: Colors.yellow,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ignore: prefer_const_constructors
                  Text(
                    "Holla World",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  ElevatedButton(
                    child: const Text("Ke halaman second page"),
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) {
                            return const SecondPage();
                          }, ), );
                    },
                    )
                ],
              )
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              color: Colors.pink,
              child: const Center(
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Holla World",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ),
            ),
          )
        ],
      ),

    );
  }
}