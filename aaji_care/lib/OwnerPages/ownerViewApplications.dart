import 'package:aaji_care/OwnerPages/ownerViewApplicationsInfo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ownerViewApplications extends StatefulWidget {
  var id;
  ownerViewApplications(
    this.id
  );

  @override
  State<ownerViewApplications> createState() => _ownerViewApplicationsState(id);
}

class _ownerViewApplicationsState extends State<ownerViewApplications> {
  var id;
  _ownerViewApplicationsState(
    this.id
  );
  @override
  Widget build(BuildContext context) {
    final _firestore = FirebaseFirestore.instance;
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Applications"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Container(
          width: (340/360)*ScreenWidth,
          height: (570/672)*ScreenHeight,
          child: StreamBuilder(
            stream: _firestore.collection("Vacancy").doc(id).collection("Resumes").snapshots(), 
            builder: (context, snapshot){
              if(snapshot.hasData){
                return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Card(
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.person),
                              title: Text(snapshot.data!.docs[index]["Applicant Name"]),
                              subtitle: Text(snapshot.data!.docs[index]["Applicant Phone"]),
                              trailing: IconButton(
                                onPressed: (){
                                  _firestore.collection("Vacancy").doc(id).collection("Resumes").doc(snapshot.data!.docs[index].id).delete();
                                }, 
                                icon: Icon(Icons.delete,color: Colors.red,)  
                              ),
                            )
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ownerViewApplicationsInfo(snapshot.data!.docs[index]["Applicant Email"], snapshot.data!.docs[index]["Applicant Name"], snapshot.data!.docs[index]["Applicant Phone"], snapshot.data!.docs[index]["PDF Name"], snapshot.data!.docs[index]["PDF Url"])));
                      },
                    );
                  },
                );
              }
              else{
                return Center(child: CircularProgressIndicator(),);
              }
            },
          ),
        ),
      ),
    );
  }
}