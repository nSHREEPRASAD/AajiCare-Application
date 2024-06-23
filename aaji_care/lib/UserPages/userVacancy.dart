import 'package:aaji_care/UserPages/userVacancyInformation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class userVacancy extends StatefulWidget {
  const userVacancy({super.key});

  @override
  State<userVacancy> createState() => _userVacancyState();
}

class _userVacancyState extends State<userVacancy> {
  @override
  Widget build(BuildContext context) {
    final _firestore = FirebaseFirestore.instance;
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Vacancy"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: StreamBuilder(
        stream: _firestore.collection("Vacancy").snapshots(), 
        builder: (context,snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                  child: InkWell(
                    child: Card(
                      elevation: 5,
                      child: Container(
                        width: (300/360)*ScreenWidth,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10,top: 15,bottom: 15),
                              child: Container(
                                width: (100/360)*ScreenWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Job Title",style: TextStyle(fontWeight: FontWeight.bold,fontSize: (20/672)*ScreenHeight),),
                                  ],
                                ),
                              ),
                            ),
                            Text(":",style: TextStyle(fontWeight: FontWeight.bold,fontSize: (20/672)*ScreenHeight),),
                            SizedBox(width: (10/360)*ScreenWidth,),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: (140/360)*ScreenWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${snapshot.data!.docs[index]["Title"]}",style: TextStyle(fontSize: (18/672)*ScreenHeight),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>userVacancyInformation(snapshot.data!.docs[index]["Title"],snapshot.data!.docs[index]["Description"],snapshot.data!.docs[index]["Location"],snapshot.data!.docs[index]["Timings"], snapshot.data!.docs[index]["Salary"],snapshot.data!.docs[index].id)));
                    },
                  ),
                );
              },
            );
          }
          else{
            return Center(child: CircularProgressIndicator(),);
          }
        }
      ),
    );
  }
}