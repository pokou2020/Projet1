import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projet1/projet4/screem/bottomBar/CercleProjet4.dart';
import 'package:projet1/projet4/screem/bottomBar/HomeProjet4.dart';
import 'package:projet1/projet4/screem/bottomBar/MoreProjet4.dart';

import 'CardsProjet4.dart';
import 'ProfileProjet4.dart';



class Bottombarpages extends StatefulWidget {
  const Bottombarpages({super.key});

  @override
  State<Bottombarpages> createState() => _BottombarpagesState();
}

class _BottombarpagesState extends State<Bottombarpages> {

  int _currentIndex=0;

  List <Widget> body= const[
    HomeProjet4(),
    MoreProjet4(),
    CercleProjet4(),
    CardsProjet4(),
    ProfileProjet4(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        showSelectedLabels: true,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value){
           setState(() {
             _currentIndex=value;
           });
        },
        items:  [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home_outlined)),
        BottomNavigationBarItem(
          label: "More",
          icon: Icon(Icons.my_library_add_rounded),
),
                  BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.polymer_sharp, size: 2,)),
                  BottomNavigationBarItem(
          label: "cards",
          icon: Icon(Icons.credit_card_sharp),),
                  BottomNavigationBarItem(
          label: "Profile",
          icon:  SvgPicture.asset( 
		     'assets/images/profile.svg', 
		    semanticsLabel: 'My SVG Image', 
		   height: 30, 
	    	width: 70, 
	    	),)

      ]),
      floatingActionButton: FloatingActionButton(
     shape: const  RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(100),
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
                topLeft: Radius.circular(100))),
    
        child: SvgPicture.asset( 
		     'assets/images/send.svg', 
		    semanticsLabel: 'My SVG Image', 
		   height: 30, 
	    	width: 70, 
        color: Colors.white,
	    	),
        backgroundColor: Colors.black,
        onPressed: ( ){}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}