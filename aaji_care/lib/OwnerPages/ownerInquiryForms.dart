import 'package:aaji_care/OwnerPages/ownerInquiryFormsInformation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class OwnerInquiryForm extends StatelessWidget {
  const OwnerInquiryForm({super.key});

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,  
        title: Text("Inquiries"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Container(
            width: (320/360)*ScreenWidth,
            height: (550/672)*ScreenHeight,
            child: StreamBuilder(
              stream: FirebaseFirestore.instance.collection("Inquiry").snapshots(),
              builder: (context,AsyncSnapshot<QuerySnapshot>snapshot){
                if(snapshot.hasData){
                  return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context,index){
                      return InkWell (
                        child: Padding(
                          padding: const EdgeInsets.only(left: 2,right: 2),
                          child: Card(
                            elevation: 5,
                            child: Container(
                              child: ListTile(
                                leading: CircleAvatar(child: Icon(Icons.person),),
                                title: Text(snapshot.data!.docs[index]["Name"].toString()),
                                subtitle: Text(snapshot.data!.docs[index]["Service"].toString()),
                                trailing: Icon(Icons.question_mark),
                              ),
                            ),
                          ),
                        ),
                        onTap: (){ 
                          Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ownerInquiryFormsInformation(snapshot.data!.docs[index]["Contact Number"], snapshot.data!.docs[index]["Email"], snapshot.data!.docs[index]["Message"], snapshot.data!.docs[index]["Name"], snapshot.data!.docs[index]["Service"],snapshot.data!.docs[index]["Id"])));
                        },
                      );
                    }
                  );
                }
                else{
                  return Center(child: CircularProgressIndicator());
                }
              }
            ),
          ),
        ),
      ),
    );
  }
}