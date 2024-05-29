import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projet1/projet4/screem/ActivationEtape2.dart';
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
      padding: const EdgeInsets.only(
        top: 16,
      ),
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

      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only( right: 5.w, left: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                  child: Container(
                
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  
                    const Text(
                      "Enter code",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    const Text(
                      "A 4-digit code was sent to j*******ide@gmail.com.",
                    ),
                    const Text(
                      "Enter the code to continue.",
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "Send to my phone number instead",
                      style: TextStyle(
                        color: Colors.orange[900],
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.orange[900],
                      ),
                    ),
                  ],
                ),
              )),

              /// Code pin

              Expanded(
                flex: 4,
                  child: Container(
              
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        4,
                        (index) {
                          return Container(
                            margin: const EdgeInsets.all(6.0),
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.orange),
                                borderRadius: BorderRadius.circular(15),
                                color: index < enteredPin.length
                                    ? isPinVisible
                                        ? Colors.orange[100]
                                        : Colors.orange[100]
                                    : Colors.orange[100]),
                            child: isPinVisible && index < enteredPin.length
                                ? Center(
                                    child: Text(
                                      enteredPin[index],
                                      style: const TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  )
                                : null,
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Center(child: Text("Didn't receive a code? Resend in")),
                    Center(child: Text("05:00")),
                    SizedBox(
                      height: 3.h,
                    ),
                  ],
                ),
              )),

              Expanded(
                flex: 7,
                  child: Container(
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
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
                          InkWell(
                            onTap: () {
                              setState(
                                () {
                                  if (enteredPin.isNotEmpty) {
                                    enteredPin = enteredPin.substring(
                                        0, enteredPin.length - 1);
                                  }
                                },
                              );
                            },
                            child: Container(
                              width: 50,
                              child: const Icon(
                                Icons.backspace_outlined,
                                color: Colors.black,
                                size: 24,
                              ),
                            ),
                          ),
                          numButton(0),
                          InkWell(
                            onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ActivationEtape2()));
                            },
                            child: Container(
                              height: 50,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
