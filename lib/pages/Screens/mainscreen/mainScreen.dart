import 'package:flutter/material.dart';

import 'package:starbucks_in/compoents/bottomLogin.dart';
import 'package:starbucks_in/compoents/main%20Componets/cards.dart';
import 'package:starbucks_in/compoents/main%20Componets/clipcard.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Color> Mylist =[Colors.black,Colors.red];
  
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      
      child: Scaffold(
          backgroundColor: Colors.green,
          body: Column(
            children: [
              Stack(children: [
                Image.asset(
                  'assets/images/appbar.jpg',
                  fit: BoxFit.fill,
                  height: 150,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: IconButton(
                      onPressed: () => (print( double.maxFinite)),
                      icon: Icon(
                        Icons.home_filled,
                        size: 35,
                        color: Colors.transparent,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 365, top: 20),
                  child: IconButton(
                      onPressed: () => (),
                      icon: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.transparent,
                        size: 30,
                      )),
                )
              ]),
              Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                    'assets/images/p2.jpg',
                  ))),
                  child: Stack(children: [
                    Image.asset(
                      'assets/images/p2.jpg',
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                        right: 13, top: 21, child: MyButton1(onTap: () => ()))
                  ])),
              Container(
                width: double.infinity,
                height: 562,
                color: Colors.white,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    mecky(),
                    Container(
                      width: double.infinity,
                      height: 550,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 30),
                        child: Row(
                          children: [
                            Container(
                              width: 410,
                              height: 450,
                              color: Colors.amber,
                              child: cardz()
                               ),
                              
                          ],
                        ),
                      ),
                    ),
                    //GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: crossAxisCount), itemBuilder: itemBuilder)
                  ]),
                ),
              )
            ],
          )),
    );
  }
}
