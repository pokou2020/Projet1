import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projet1/projet4/screem/ActivationEtape3.dart';
import 'package:sizer/sizer.dart';

class ActivationEtape2 extends StatefulWidget {
  const ActivationEtape2({super.key});

  @override
  State<ActivationEtape2> createState() => _ActivationEtape2State();
}

class _ActivationEtape2State extends State<ActivationEtape2> {
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
                  child: Center(
                child: Container(
                  child: Column(
                    children: [
                       SizedBox(
                        height: 4.h,
                      ),
                      SvgPicture.asset( 
           'assets/images/cadenas.svg', 
           semanticsLabel: 'My SVG Image', 
           height: 5.h, 
           width: 7.w, 
         ),
                      SizedBox(
                        height: 2.h,
                      ),
                      const Text(
                        "Create new pin",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      const Text(
                        "Create a new pin for your card",
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
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
                    ],
                  ),
                ),
              )),

              /// Code pin

              Expanded(
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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ActivationEtape3()));
                            },
                            child: Container(
                              height: 50,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.orange[100],
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
