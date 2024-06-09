import 'package:aaji_care/OwnerPages/ownerAddVacancy.dart';
import 'package:aaji_care/OwnerPages/ownerVacancyInformation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ownerVacancy extends StatefulWidget {
  const ownerVacancy({super.key});

  @override
  State<ownerVacancy> createState() => _ownerVacancyState();
}

class _ownerVacancyState extends State<ownerVacancy> {
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
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ownerAddVacancy()));
        },
        child:Icon(Icons.add,size: (30/672)*ScreenHeight,),
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
                              child: Text("Job Title :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: (20/672)*ScreenHeight),),
                            ),
                            Container(
                              width: (160/360)*ScreenWidth,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text("${snapshot.data!.docs[index]["Title"]}",style: TextStyle(fontSize: (18/672)*ScreenHeight),),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: IconButton(
                                onPressed: (){
                                  _firestore.collection("Vacancy").doc(snapshot.data!.docs[index].id).delete();
                                  try{
                                      _firestore.collection("Vacancy").doc(snapshot.data!.docs[index].id).collection("Resumes").get().then((snap)=>{
                                      for (DocumentSnapshot ds in snap.docs){
                                        ds.reference.delete()
                                      }
                                    });
                                  }
                                  catch(e){
                                    //error
                                  }
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("Vacancy Deleted"),
                                      backgroundColor: Colors.red,
                                      duration: Duration(seconds: 3),
                                    )
                                  );
                                }, 
                                icon: Icon(Icons.delete,color: Colors.red,)
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ownerVacancyInformation(snapshot.data!.docs[index]["Title"],snapshot.data!.docs[index]["Description"],snapshot.data!.docs[index]["Location"],snapshot.data!.docs[index]["Timings"], snapshot.data!.docs[index]["Salary"],snapshot.data!.docs[index].id)));
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