import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

class ActivateProjet4 extends StatefulWidget {
  const ActivateProjet4({super.key});

  @override
  State<ActivateProjet4> createState() => _ActivateProjet4State();
}

class _ActivateProjet4State extends State<ActivateProjet4> {
  String enteredPin = '';
  bool isPinVisible = true;

  /// this widget will be use for each digit
  Widget numButton(int number) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: TextButton(
        onPressed: () {
          setState(() {
            if (enteredPin.length < 4) {
              enteredPin += number.toString();
            }
          });
        },
        child: Text(
          number.toString(),
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          physics: const BouncingScrollPhysics(),
          children: [
            const  Text("Enter code",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
           ),
           SizedBox(height: 2.h,),
          const Text("A 4-digit code was sent to j*******ide@gmail.com.",
           
            ),
        
          const  Text("Enter the code to continue.",
          
            ),
      SizedBox(height: 2.h,),
            Text("Send to my phone number instead",
            style: TextStyle(color:Colors.orange[900],
            fontSize: 16,
            decoration: TextDecoration.underline,
            decorationColor:Colors.orange[900],
            
            ),
            ),
            const SizedBox(height: 50),

            /// pin code area
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) {
                  return Container(
                    margin: const EdgeInsets.all(6.0),
                    width:  65 ,
                    height:  65,
                    decoration: BoxDecoration(
                       border: Border.all(color: Colors.orange),
                      borderRadius: BorderRadius.circular(15),
                      color: index < enteredPin.length
                          ? isPinVisible
                              ? Colors.orange[100]
                              :Colors.orange[100]
                          : Colors.orange[100]
                    ),
                    child: isPinVisible && index < enteredPin.length
                        ? Center(
                            child: Text(
                              enteredPin[index],
                              style: const TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        : null,
                  );
                },
              ),
            ),

          
            for (var i = 0; i < 3; i++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    3,
                    (index) => numButton(1 + 3 * i + index),
                  ).toList(),
                ),
              ),

            /// 0 digit with back remove
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TextButton(onPressed: null, child: SizedBox()),
                  numButton(0),
                  TextButton(
                    onPressed: () {
                      setState(
                        () {
                          if (enteredPin.isNotEmpty) {
                            enteredPin =
                                enteredPin.substring(0, enteredPin.length - 1);
                          }
                        },
                      );
                    },
                    child: const Icon(
                      Icons.backspace,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),


           
          ],
        ),
      ),
    );
  }
}