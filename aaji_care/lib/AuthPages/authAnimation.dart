import 'dart:async';

import 'package:aaji_care/OwnerPages/ownerHome.dart';
import 'package:aaji_care/UserPages/userHome.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class authAnimation extends StatefulWidget {
  var Email;
  var Role;
  authAnimation(
    this.Email,
    this.Role
  );
  @override
  State<authAnimation> createState() => _authAnimationState(Email,Role);
}

class _authAnimationState extends State<authAnimation> {
  var Email;
  var Role;
  _authAnimationState(
    this.Email,
    this.Role
  );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 8), () {
      if(Role=="User"){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>UserHome(Email,Role)));
      }  
      else if(Role=="Owner"){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OwnerHome(Email,Role)));
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Lottie.asset("assets/animations/AuthenticationAnimation.json"),
        ),
      ),
    );
  }
}