
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:starbucks_in/pages/Screens/LoginScreen/gift.dart';


import 'package:starbucks_in/pages/Screens/LoginScreen/register2.dart';
import 'package:starbucks_in/pages/Screens/LoginScreen/register3.dart';
import 'package:starbucks_in/pages/Screens/mainscreen/mainScreen.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _CurrentIndex = 0;
  bool selectedIndex = false;
  final List<Widget> _pages =[
    MainScreen(),
    gift(),
    Register2(),
   Register3()
  ];
  
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: StylishBottomBar( onTap: (index) {
          setState(() {
            _CurrentIndex = index;
            // _CurrentIndex = selectedIndex;
            selectedIndex;
            
          });
        },
        currentIndex: _CurrentIndex,
        
          option: AnimatedBarOptions(
            // iconSize: 32,
            barAnimation: BarAnimation.fade,
            iconStyle: IconStyle.animated,
            // opacity: 0.3,
          ),
          items: [
            BottomBarItem(
              icon:    _CurrentIndex == 0  ? 
              Icon(Icons.home,color: Color(0xff016241),) :Icon(Icons.home_outlined),
              //selectedIcon:  Icon(Icons.home_outlined),
              unSelectedColor: Color(0xff016241),
              selectedColor: Color.fromARGB(255, 24, 57, 46),
              //backgroundColor: Color(0xff016241),
              title: const Text('Home'),
               
              showBadge: false,
            ),
            BottomBarItem(
              icon:   _CurrentIndex == 1 ? 
              Icon(Ionicons.gift,color: Color(0xff016241),) :Icon(Ionicons.gift_outline),
             // selectedIcon:  Icon(Ionicons.gift),
              selectedColor: Color(0xff016241),
              unSelectedColor: Color(0xff016241),
             // backgroundColor: Colors.orange,
              title: const Text('Gift'),
            ),
            BottomBarItem(
                icon:  _CurrentIndex == 2 ? 
              Icon(Icons.payment,color: Color(0xff016241),) : Icon(Icons.payment_outlined,color: Color(0xff016241)),
                
                // selectedIcon: const Icon(
                //   Icons.style,
                // ),
                //backgroundColor: Colors.amber,
                selectedColor: Color(0xff016241),
                title: const Text('Pay')),
            BottomBarItem(
                 icon:  _CurrentIndex == 3 ? 
              Icon(Icons.search,color: Color(0xff016241),) : Icon(Icons.search_outlined,color: Color(0xff016241)),
                
               
                
                //backgroundColor: Colors.purpleAccent,
                selectedColor: Color(0xff016241),
                title: const Text('Search')),
          ],
          hasNotch: true,
          fabLocation: StylishBarFabLocation.center,),
          floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
             
            });
          },
          backgroundColor: Color(0xff009865),
          child: ImageIcon(
            AssetImage('assets/images/cup1.png',))
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: _pages[_CurrentIndex],
        
      ),
    );
    
  }
}
 

