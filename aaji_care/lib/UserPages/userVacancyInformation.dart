import 'package:aaji_care/UserPages/userApplyForVacancy.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class userVacancyInformation extends StatefulWidget {
  var Title;
  var Description;
  var Location;
  var Timings;
  var Salary;
  var id;
  userVacancyInformation(
    this.Title,
    this.Description,
    this.Location,
    this.Timings,
    this.Salary,
    this.id
  );

  @override
  State<userVacancyInformation> createState() => _userVacancyInformationState(Title,Description,Location,Timings,Salary,id);
}

class _userVacancyInformationState extends State<userVacancyInformation> {
  var Title;
  var Description;
  var Location;
  var Timings;
  var Salary;
  var id;
  _userVacancyInformationState(
    this.Title,
    this.Description,
    this.Location,
    this.Timings,
    this.Salary,
    this.id
  );
  Map <String,dynamic> usermap = {};
  final _firestore = FirebaseFirestore.instance;
  bool isLoading =true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    try{
      _firestore.collection("Vacancy").doc(id)
      .collection("Resumes").doc(FirebaseAuth.instance.currentUser!.uid.toString())
      .get().then((value){
        if(mounted){
          setState(() {
            usermap=value.data()!;
          });
        }
      });
    }
    catch(e){
      if(mounted){
        setState(() {
          usermap={};
        });
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Vacancy Details"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          usermap.isEmpty?
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>userApplyForVacancy(id)));
              }, 
              child: Row(
                children: [
                  Icon(Icons.ads_click_rounded,color: Colors.white,),
                  SizedBox(width: (2/360)*ScreenWidth,),
                  Text("Apply",style: TextStyle(color: Colors.white),)
                ],
              )
            ),
          ):
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: TextButton(
              onPressed: (){}, 
              child: Text("Applied")
            ),
          )
        ],
      ),
      body: Center(
        child: Card(
          elevation: 10,
          child: Container(
            width: (340/360)*ScreenWidth,
            height: (560/672)*ScreenHeight,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 17,right: 17,top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Job Title :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          Text("${Title}",style: TextStyle(fontSize: 18,color: Colors.blueGrey),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17,right: 17,top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Job Description :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          Text("${Description}",style: TextStyle(fontSize: 18,color: Colors.blueGrey),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17,right: 17,top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Job Location :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          Text("${Location}",style: TextStyle(fontSize: 18,color: Colors.blueGrey),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17,right: 17,top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Job Timings :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          Text("${Timings}",style: TextStyle(fontSize: 18,color: Colors.blueGrey),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17,right: 17,top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Job Salary :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          Text("Rs ${Salary}",style: TextStyle(fontSize: 18,color: Colors.blueGrey),)
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ),
          ),
        ),
      ),
    );
  }
}