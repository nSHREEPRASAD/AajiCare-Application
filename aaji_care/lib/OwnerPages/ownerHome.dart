import 'package:aaji_care/AuthPages/signIn.dart';
import 'package:aaji_care/OwnerPages/ownerAajiCareActivity.dart';
import 'package:aaji_care/OwnerPages/ownerInquiryForms.dart';
import 'package:aaji_care/OwnerPages/ownerMakePost.dart';
import 'package:aaji_care/OwnerPages/ownerResponseCorner.dart';
import 'package:aaji_care/OwnerPages/ownerVacancy.dart';
import 'package:aaji_care/UserPages/userAajiCareActivity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OwnerHome extends StatefulWidget {
  var Email;
  var Role;
  OwnerHome(
    this.Email,
    this.Role 
  );
  @override
  State<OwnerHome> createState() => _OwnerHomeState(Email,Role);
}

class _OwnerHomeState extends State<OwnerHome> {
  var Email;
  var Role;
  _OwnerHomeState(
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
                      Icon(Icons.comment),
                      SizedBox(width: (10/360)*ScreenWidth,),
                      Text("Response Corner",style: TextStyle(fontSize: (20/672)*ScreenHeight),),
                    ],
                  ),
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ownerResponseCorner()));
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
                      Icon(Icons.post_add),
                      SizedBox(width: (10/360)*ScreenWidth,),
                      Text("Make a Post",style: TextStyle(fontSize: (20/672)*ScreenHeight),),
                    ],
                  ),
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ownerMakePost()));
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
                      Icon(Icons.book),
                      SizedBox(width: (10/360)*ScreenWidth,),
                      Text("Inquiry Forms",style: TextStyle(fontSize: (20/672)*ScreenHeight),),
                    ],
                  ),
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OwnerInquiryForm()));
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ownerAajiCareActivity()));
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ownerVacancy()));
              },
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: (20/672)*ScreenHeight,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                    child: Container(
                      width: (320/360)*ScreenWidth,
                      height: (150/672)*ScreenHeight,
                      child: Image.network("https://www.mymediland.com/profile_images/21548930433.png")
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  width: (400/360)*ScreenWidth,
                  child: Column(
                    children: [
                      Text("Hello Admin !. This is Aaji Care's Admin Section. Making posts, Handeling response forms, Adding Vacancy Updates, Handeling Applicant's resumes, Aaji Care Community Chats, all these functionalities are to be handeled in this admin section.",style: TextStyle(fontSize: (20/672)*ScreenHeight,fontWeight: FontWeight.bold, color: Colors.black),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: (10/672)*ScreenHeight,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Container(
                  width: (320/360)*ScreenWidth,
                  height: (150/672)*ScreenHeight,
                  child: Lottie.asset("assets/animations/AajiCareAdminHome.json"),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}