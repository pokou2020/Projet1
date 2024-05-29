import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ViewCarte extends StatefulWidget {
  const ViewCarte({super.key});

  @override
  State<ViewCarte> createState() => _ViewCarteState();
}

class _ViewCarteState extends State<ViewCarte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        decoration:BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/bac.jpg"), fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Card(
                elevation: 10,
                child: Container(
                  height: 50.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange[900]
                  ),
                ),
              ),
            )
          ],
        ),
      ),),
    );
  }
}