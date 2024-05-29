import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projet1/projet4/screem/ViewCarte.dart';
import 'package:sizer/sizer.dart';

class ActivationReussiPage extends StatefulWidget {
  const ActivationReussiPage({super.key});

  @override
  State<ActivationReussiPage> createState() => _ActivationReussiPageState();
}

class _ActivationReussiPageState extends State<ActivationReussiPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
                           SvgPicture.asset( 
           'assets/images/badge.svg', 
           semanticsLabel: 'My SVG Image', 
           height: 15.h, 
           width: 12.w, 
           
         ),
SizedBox(height: 5.h,),
         Center(
           child: Text("Pin created successfully",
           style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
           ),
           ),
         ),
         SizedBox(height: 2.h,),
         Center(child: Text("whoohoo! Your card is ready for use")),
        SizedBox(height: 10.h,),
         Center(
           child: InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ViewCarte()));
            },
             child: Container(
              height: 8.h,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.orange[900]
              ),
              child: Center(child: Text("Cool! Unwrap my card", 
              style: TextStyle(color: Colors.white),
              )),
             ),
           ),
         )
                   ],
        ),
      )),
    );
  }
}