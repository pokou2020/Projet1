import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../ActivateProjet4.dart';

class CardsProjet4 extends StatefulWidget {
  const CardsProjet4({super.key});

  @override
  State<CardsProjet4> createState() => _CardsProjet4State();
}

class _CardsProjet4State extends State<CardsProjet4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.only(left: 2.h, right: 2.h),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("All cards",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[200]
                  ),
                  child: Center(child: Icon(Icons.notifications_none_outlined)))
              ],
            ),
            SizedBox(height: 3.h,),
            Container(
              height: 9.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 2.w,),
                   Container(
                     height: 7.h,
                     width:45.w ,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white
                     ),
                     child: Center(child: Text("Physical card",
                     style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                     ),
                     )),

                   ),

                      Container(
                     height: 7.h,
                     width:45.w ,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      
                     ),
                     child: Center(child: Text("Virtual card",
                        style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                     ),
                     )),

                   )
                ],
              ),
              
              ),
    SizedBox(height: 5.h,),
              Card(
                elevation: 10,
                child: Container(
                  height: 39.h,
                  width: MediaQuery.of(context).size.width/1.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange[900]
                  ),
                  
                  ),
              ),
                 SizedBox(height: 3.h,),
                   Text("Your card has been delivered to you. Activate",
                   style: TextStyle(
                    
                   ),
                   ),
                     Text("This card to start using it for transactions",
                   style: TextStyle(
                    
                   ),
                   ),
       SizedBox(height: 2.h,),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ActivateProjet4()));
                      },
                      child: Container(
                                        height: 8.h,
                                    width: MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(30),
                                        color: Colors.orange[900]
                                        ),
                                        child: Center(child: Text("Activate this card",
                                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                                        ))),
                    ),

                   Text("This unwraps your card for use",
                   style: TextStyle(
                    fontSize: 10
                   ),
                   ),
          ],
        ),
      )
    );
  }
}