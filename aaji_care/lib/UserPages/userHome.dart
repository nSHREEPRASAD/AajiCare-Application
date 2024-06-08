import 'package:aaji_care/AuthPages/signIn.dart';
import 'package:aaji_care/UserPages/userAajiCareActivity.dart';
import 'package:aaji_care/UserPages/userAboutFounder.dart';
import 'package:aaji_care/UserPages/userAboutUs.dart';
import 'package:aaji_care/UserPages/userContactUs.dart';
import 'package:aaji_care/UserPages/userInquiryForm.dart';
import 'package:aaji_care/UserPages/userInquiryReply.dart';
import 'package:aaji_care/UserPages/userResponseCorner.dart';
import 'package:aaji_care/UserPages/userServices.dart';
import 'package:aaji_care/UserPages/userVacancy.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserHome extends StatefulWidget {
  var Email;
  var Role;
  UserHome(
    this.Email,
    this.Role 
  );
  @override
  State<UserHome> createState() => _UserHomeState(Email,Role);
}

class _UserHomeState extends State<UserHome> {
  var Email;
  var Role;
  _UserHomeState(
    this.Email,
    this.Role
  );
  final _auth=FirebaseAuth.instance;
  Map<String,dynamic> userMap={};
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseFirestore.instance.collection("Users").doc(_auth.currentUser!.uid.toString()).get().then((value){
      setState(() {
        userMap=value.data()!;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: (50/672)*ScreenHeight,),
              Card(
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: userMap.isEmpty?Text("Loading..."):Text(userMap["Name"]),
                  subtitle: Text("Role : User"),
                  trailing: IconButton(
                    onPressed: (){
                      _auth.signOut().then((value){
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Account Signed Out",style: TextStyle(color: Colors.white),),
                              backgroundColor: Colors.black,
                              duration: Duration(seconds: 2),
                          )
                        );
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignIn()));
                      });
                    }, 
                    icon: Icon(Icons.logout)
                  ),
                ),
              ),
              SizedBox(height: (10/672)*ScreenHeight,),
              InkWell(
                child: Card(
                  elevation: 5,
                  child: Container(
                    height: (50/672)*ScreenHeight,
                    child: Row(
                      children: [
                        SizedBox(width: (10/360)*ScreenWidth,),
                        Icon(Icons.info),
                        SizedBox(width: (10/360)*ScreenWidth,),
                        Text("About Us",style: TextStyle(fontSize: (20/672)*ScreenHeight),),
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>userAboutUs()));
                },
              ),
              InkWell(
                child: Card(
                  elevation: 5,
                  child: Container(
                    height: (50/672)*ScreenHeight,
                    child: Row(
                      children: [
                        SizedBox(width: (10/360)*ScreenWidth,),
                        Icon(Icons.room_service),
                        SizedBox(width: (10/360)*ScreenWidth,),
                        Text("Services",style: TextStyle(fontSize: (20/672)*ScreenHeight),),
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>userServices()));
                },
              ),
              InkWell(
                child: Card(
                  elevation: 5,
                  child: Container(
                    height: (50/672)*ScreenHeight,
                    child: Row(
                      children: [
                        SizedBox(width: (10/360)*ScreenWidth,),
                        Icon(Icons.man),
                        SizedBox(width: (10/360)*ScreenWidth,),
                        Text("About Founder",style: TextStyle(fontSize: (20/672)*ScreenHeight),),
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>userAboutFounder()));
                },
              ),
              InkWell(
                child: Card(
                  elevation: 5,
                  child: Container(
                    height: (50/672)*ScreenHeight,
                    child: Row(
                      children: [
                        SizedBox(width: (10/360)*ScreenWidth,),
                        Icon(Icons.comment),
                        SizedBox(width: (10/360)*ScreenWidth,),
                        Text("Response Corner",style: TextStyle(fontSize: (20/672)*ScreenHeight),),
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>userResponseCorner()));
                },
              ),
              InkWell(
                child: Card(
                  elevation: 5,
                  child: Container(
                    height: (50/672)*ScreenHeight,
                    child: Row(
                      children: [
                        SizedBox(width: (10/360)*ScreenWidth,),
                        Icon(Icons.image),
                        SizedBox(width: (10/360)*ScreenWidth,),
                        Text("Aaji Care Activity",style: TextStyle(fontSize: (20/672)*ScreenHeight),),
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>userAajiCareActivity()));
                },
              ),
              InkWell(
                child: Card(
                  elevation: 5,
                  child: Container(
                    height: (50/672)*ScreenHeight,
                    child: Row(
                      children: [
                        SizedBox(width: (10/360)*ScreenWidth,),
                        Icon(Icons.call),
                        SizedBox(width: (10/360)*ScreenWidth,),
                        Text("Contact Us",style: TextStyle(fontSize: (20/672)*ScreenHeight),),
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>userContactUs()));
                },
              ),
              InkWell(
                child: Card(
                  elevation: 5,
                  child: Container(
                    height: (50/672)*ScreenHeight,
                    child: Row(
                      children: [
                        SizedBox(width: (10/360)*ScreenWidth,),
                        Icon(Icons.reply),
                        SizedBox(width: (10/360)*ScreenWidth,),
                        Text("Inquiry Reply",style: TextStyle(fontSize: (20/672)*ScreenHeight),),
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>userInquiryReply()));
                },
              ),
              InkWell(
                child: Card(
                  elevation: 5,
                  child: Container(
                    height: (50/672)*ScreenHeight,
                    child: Row(
                      children: [
                        SizedBox(width: (10/360)*ScreenWidth,),
                        Icon(Icons.work),
                        SizedBox(width: (10/360)*ScreenWidth,),
                        Text("Vacancy",style: TextStyle(fontSize: (20/672)*ScreenHeight),),
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>userVacancy()));
                },
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            CarouselSlider(
              items: [
                Image.asset("assets/images/AajiCareImage1.jpg"),
                Image.asset("assets/images/AajiCareImage2.jpg"),
                Image.asset("assets/images/AajiCareImage3.jpg"),
                Image.asset("assets/images/AajiCareImage4.jpg"),
                Image.asset("assets/images/AajiCareImage5.jpg")
              ], 
              options: CarouselOptions(
                autoPlay: true,
                enableInfiniteScroll: true,
                enlargeCenterPage: true
              )
            ),
            SizedBox(height: (30/672)*ScreenHeight,),
            Container(
              width: (300/360)*ScreenWidth,
              height: (330/672)*ScreenHeight,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Story Behind The Brand :",style: TextStyle(fontSize: (30/672)*ScreenHeight,fontWeight: FontWeight.bold),),
                    SizedBox(height: (10/672)*ScreenHeight,),
                    Text(
                      "Our Founder & CEO, Prasad Bhide, faced dilemmas, guilt, distress, and hassles while managing post-operative care for his mother and grandmother while staying in the USA. So he left his high-paying IT job to start a social enterprise called Aaji Care in 2012. ",
                      style: TextStyle(fontSize: (20/672)*ScreenHeight),
                    ),
                    SizedBox(height: (30/672)*ScreenHeight,),
                    Text(
                      "His thought was to make sure other families do not have to face similar challenges like him and his family and improve the quality of care delivered to elders at home. Aaji Care provides two-fold impact; one is to empower elders through various services which will enhance the quality of life for elders and their families second is to create distinguished careers for caregivers dominated by women.",
                      style: TextStyle(fontSize: (20/672)*ScreenHeight),
                    ),
                    SizedBox(height: (10/672)*ScreenHeight,),
                    Container(
                      width: (300/360)*ScreenWidth,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Card(
                              elevation: 10,
                              child: Container(
                                width: (115/360)*ScreenWidth,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("4.8/5",style: TextStyle(fontSize: (20/672)*ScreenHeight,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                                      SizedBox(height: (5/672)*ScreenHeight,),
                                      Text("Brand With Highest Client Satisfaction Index - Google Rating",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic, fontSize: (15/672)*ScreenHeight),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: (5/360)*ScreenWidth,),
                            Card(
                              elevation: 5,
                              child: Container(
                                width: (115/360)*ScreenWidth,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text("27000 +",style: TextStyle(fontSize: (20/672)*ScreenHeight,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                                        SizedBox(height: (10/672)*ScreenHeight,),
                                        Text("Served more than 27000 Elders & Families",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: (15/672)*ScreenHeight),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: (5/360)*ScreenWidth,),
                            Card(
                              elevation: 5,
                              child: Container(
                                width: (115/360)*ScreenWidth,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text("99 %",style: TextStyle(fontSize: (20/672)*ScreenHeight,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                                        SizedBox(height: (10/672)*ScreenHeight,),
                                        Text("Consistency in Service delivery",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: (15/672)*ScreenHeight),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: (5/360)*ScreenWidth,),
                            Card(
                              elevation: 5,
                              child: Container(
                                width: (115/360)*ScreenWidth,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text("100 %",style: TextStyle(fontSize: (20/672)*ScreenHeight,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                                        SizedBox(height: (10/672)*ScreenHeight,),
                                        Text("Competent & certified Care givers",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: (15/672)*ScreenHeight),)
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ), 
                      ),
                    ),
                    SizedBox(height: (30/672)*ScreenHeight,),
                    Text("What Challenges We Address For The Families With Elders ?",style: TextStyle(fontSize: (25/672)*ScreenHeight,fontWeight: FontWeight.bold),),
                    SizedBox(height: (20/672)*ScreenHeight,),
                    Text("*Finding Trained & Trustworthy care giver at home",style: TextStyle(fontWeight: FontWeight.bold,fontSize: (18/672)*ScreenHeight),),
                    SizedBox(height: (10/672)*ScreenHeight,),
                    Text("*Alzheimer & Dementia Care ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: (18/672)*ScreenHeight),),
                    SizedBox(height: (10/672)*ScreenHeight,),
                    Text("*Post-Operative Care",style: TextStyle(fontWeight: FontWeight.bold,fontSize: (18/672)*ScreenHeight),),
                    SizedBox(height: (10/672)*ScreenHeight,),
                    Text("*Long Term Nursing Care",style: TextStyle(fontWeight: FontWeight.bold,fontSize: (18/672)*ScreenHeight),),
                    SizedBox(height: (10/672)*ScreenHeight,),
                    Text("*Loneliness, Depression & Anxiety",style: TextStyle(fontWeight: FontWeight.bold,fontSize: (18/672)*ScreenHeight),),
                    SizedBox(height: (10/672)*ScreenHeight,),
                    Text("*Palliative Care",style: TextStyle(fontWeight: FontWeight.bold,fontSize: (18/672)*ScreenHeight),),
                    SizedBox(height: (10/672)*ScreenHeight,),
                    Text("*Respite Care ( Short term Care)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: (18/672)*ScreenHeight),),
                    SizedBox(height: (10/672)*ScreenHeight,),
                    Text("*Lack of Elder Friendly Infrastructure",style: TextStyle(fontWeight: FontWeight.bold,fontSize: (18/672)*ScreenHeight),),
                    SizedBox(height: (10/672)*ScreenHeight,),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}