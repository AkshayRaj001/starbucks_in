import 'package:flutter/material.dart';

class gift extends StatefulWidget {
  const gift({super.key});

  @override
  State<gift> createState() => _giftState();
}

class _giftState extends State<gift> {
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff016241),
        centerTitle: true,
        title: Row(
          children: [
            SizedBox(
              width: 150,
            ),
            Text("Gift Card"),
            SizedBox(
              width: 115,
            ),
            Icon(
              Icons.search,
              size: 30,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            color: Color(0xff016241),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey,
                ),
                height: 150,
                width: 200,
                child: Image.asset(
                  "assets/images/p1.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.grey[200],
            height: 60,
            width: double.infinity,
            child: 
          ),
          TabBar(
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3'),
            ],
          ),
          
        ],
      ),
    );
  }
}
