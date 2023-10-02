import 'package:flutter/material.dart';

class cardz extends StatelessWidget {
  const cardz({super.key});
  

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();
    return PageView(
                                  controller: _pageController,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 404,
                                      color: Colors.white,
                                      child: Column(children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                          child: Image.asset('assets/images/p32.png',height: 200,),
                                        ),
                                        
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                          child: Image.asset('assets/images/p33.png',height: 200,),
                                        ),
                                      ]),
                                    ),
                                     Container(
                                      width: double.infinity,
                                      height: 404,
                                      color: Colors.white,
                                      child: Column(children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                          child: Image.asset('assets/images/p1.png',height: 200,),
                                        ),
                                        
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                          child: Image.asset('assets/images/p22.png',height: 200,),
                                        ),
                                      ]),
                                     )
                                  ],
                                );
  }
}