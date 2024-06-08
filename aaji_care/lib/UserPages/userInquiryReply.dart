import 'package:aaji_care/OwnerPages/ownerHome.dart';
import 'package:aaji_care/UserPages/userHome.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class userInquiryReply extends StatefulWidget {

  @override
  State<userInquiryReply> createState() => _userInquiryReplyState();
}

class _userInquiryReplyState extends State<userInquiryReply> {
  Map<String,dynamic>userMap={};
  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    final _firestore = FirebaseFirestore.instance;

    _firestore.collection("InquiryReply").
    doc(_auth.currentUser!.uid.toString()).
    get().then((value) {
      if(value.exists){
        setState(() {
          userMap=value.data()!;
        });
      }
    });

    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Inquiry Reply"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          userMap.isNotEmpty?
          ElevatedButton(
            onPressed: () async {
              final Uri PhoneNo = Uri(
                path: "+91 75067 34116",
                scheme: "tel"
              );

              if(await(canLaunchUrl(PhoneNo))){
                await launchUrl(PhoneNo);
              }
            }, 
            child: Row(
              children: [
                Icon(Icons.call,),
                SizedBox(width: (5/360)*ScreenWidth,),
                Text("Call")
              ],
            )
          ):
          ElevatedButton(
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>UserHome(_auth.currentUser!.email, "User")));
            }, 
            child: Text("Go Back")
            )
        ],
      ),
      body: userMap.isNotEmpty?
      Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(height: (20/672)*ScreenHeight,),
            Container(
              width: (320/360)*ScreenWidth,
              height: (550/672)*ScreenHeight,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: (2/360)*ScreenWidth
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 5,
                        color: Colors.purple,
                        child: Container(
                          width: (300/360)*ScreenWidth,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Reply",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: (20/672)*ScreenHeight),),
                                Text("From: ${userMap["ownerEmail"]}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: (20/672)*ScreenHeight),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: (10/672)*ScreenHeight,),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("${userMap["Reply"]}",style: TextStyle(fontSize: (25/672)*ScreenHeight),),
                    ),
                    ElevatedButton(
                      onPressed: (){
                        _firestore.collection("InquiryReply").
                        doc(_auth.currentUser!.uid.toString()).
                        delete().then((value){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>UserHome(_auth.currentUser!.email, "User")));
                        });
                      }, 
                      child: Container(
                        width: (200/360)*ScreenWidth,
                        height: (50/672)*ScreenHeight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_back),
                            SizedBox(width: (5/360)*ScreenWidth,),
                            Text("Go To Dashboard",style: TextStyle(fontSize: (15/672)*ScreenHeight),),
                          ],
                        ),
                      )
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ):
      Center(
        child: Text("No Reply."),
      )
    );
  }
}