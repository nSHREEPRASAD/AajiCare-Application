import 'dart:io';

import 'package:aaji_care/UserPages/userPdfViewer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class userApplyForVacancy extends StatefulWidget {
  var id;
  userApplyForVacancy(
    this.id
  );

  @override
  State<userApplyForVacancy> createState() => _userApplyForVacancyState(id);
}

class _userApplyForVacancyState extends State<userApplyForVacancy> {

  var id;
  _userApplyForVacancyState(
    this.id
  );

  String PdfUrl = "";

  final key_1 = GlobalKey<FormState>();
  final key_2 = GlobalKey<FormState>();
  final key_3 = GlobalKey<FormState>();

  TextEditingController _NameController = TextEditingController();
  TextEditingController _PhoneController = TextEditingController();
  TextEditingController _EmailController = TextEditingController();

  bool isUploaded=false;
  bool isPressed=false;
  String PDFName = "";
  @override
  Widget build(BuildContext context) {
    final _firestore = FirebaseFirestore.instance;
    final _auth = FirebaseAuth.instance;
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Apply For Vacancy"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Container(
          width: (340/360)*ScreenWidth,
          height: (560/672)*ScreenHeight,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: (1/360)*ScreenWidth,
            ),
            borderRadius: BorderRadius.circular(15)
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Form(
                      key: key_1,
                      child: TextFormField(
                        validator: (value) {
                          if(value!.isNotEmpty){
                            return null;
                          }
                          else{
                            return "Please Enter Applicant's Name";
                          }
                        },
                        controller: _NameController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: "Name of Applicant",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: (1/360)*ScreenWidth
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: (1/360)*ScreenWidth
                            )
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: (1/360)*ScreenWidth
                            )
                          ),
                        ),
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Form(
                      key: key_2,
                      child: TextFormField(
                        validator: (value) {
                          if(value!.isNotEmpty){
                            return null;
                          }
                          else{
                            return "Please Enter Applicant's Phone Number";
                          }
                        },
                        controller: _PhoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.call),
                          hintText: "Phone No. of Applicant",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: (1/360)*ScreenWidth
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: (1/360)*ScreenWidth
                            )
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: (1/360)*ScreenWidth
                            )
                          ),
                        ),
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Form(
                      key: key_3,
                      child: TextFormField(
                        validator: (value) {
                          if(value!.isNotEmpty){
                            return null;
                          }
                          else{
                            return "Please Enter Applicant's Email Address";
                          }
                        },
                        controller: _EmailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "Email Address of Applicant",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: (1/360)*ScreenWidth
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: (1/360)*ScreenWidth
                            )
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.red,
                              width: (1/360)*ScreenWidth
                            )
                          ),
                        ),
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                      onPressed: ()async{
                        FirebaseStorage.instance.ref().child("Pdfs").child("${PDFName}").delete();

                        setState(() {
                          PDFName="";
                          PdfUrl="";
                          isUploaded=false;
                        });

                        final PDF = await FilePicker.platform.pickFiles(
                          type: FileType.custom,
                          allowedExtensions: ["pdf"],
                        );
                        setState(() {
                          PDFName=PDF!.files[0].name.toString();
                        });
                        try{
                          Reference refDir = FirebaseStorage.instance.ref();
                          Reference refRoot = refDir.child("Pdfs");
                          Reference refPdf = refRoot.child(PDF!.files[0].name.toString());
                          setState(() {
                            isPressed=true;
                          });
                          Future.delayed(Duration(seconds: 15 ),(){
                            setState(() {
                              isPressed=false;
                            });
                          });
                          await refPdf.putFile(File(PDF.files[0].path.toString()));
                          PdfUrl = await refPdf.getDownloadURL();
                          setState(() {
                            isUploaded=true;
                          });
                        }
                        catch(e){
                          //error
                        }
                      }, 
                      child: Container(
                        width: (160/360)*ScreenWidth,
                        height: (50/672)*ScreenHeight,
                        child: 
                        isPressed?
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(child: CircularProgressIndicator(),)
                          ],
                        )
                        :
                        Row(
                          children: [
                            Icon(Icons.upload_file,color: Colors.black,),
                            SizedBox(width: (2/360)*ScreenWidth,),
                            isPressed?
                            Center(child: CircularProgressIndicator(),):
                            Text("Upload Resume PDF",style: TextStyle(color: Colors.black),)
                          ],
                        )
                        ,
                      )
                    ),
                  ),
                  isUploaded?
                  Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8,top: 10,bottom: 10),
                    child: InkWell(
                      child: Card(
                        elevation: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: (300/360)*ScreenWidth,
                                  height: (150/672)*ScreenHeight,
                                  child: Icon(Icons.picture_as_pdf,size: 120,),
                                ),
                                Positioned(
                                  top: 5,
                                  right: 5,
                                  child: IconButton(
                                    onPressed: (){
                                      FirebaseStorage.instance.ref().child("Pdfs").child("${PDFName}").delete();
                                      setState(() {
                                        PDFName="";
                                        PdfUrl="";
                                        isUploaded=false;
                                      });
                                    }, 
                                    icon: Icon(Icons.cancel,size: 30,)
                                  )
                                )
                              ]
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text("${PDFName}"),
                            )
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>userPdfViewer(PdfUrl)));
                      },
                    ),
                  )
                  :
                  SizedBox(height: (0/672)*ScreenHeight,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20,top: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                      onPressed: (){
                        if(!key_1.currentState!.validate() || !key_2.currentState!.validate() || !key_3.currentState!.validate()){
                          return;
                        }
                        else if (PDFName==""){
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Please Upload Resume PDF",style: TextStyle(color: Colors.black),),
                              backgroundColor: Colors.amber,
                              duration: Duration(seconds: 3),
                            )
                          );
                        }
                        else{
                          _firestore.collection("Vacancy").doc(id)
                          .collection("Resumes").doc(_auth.currentUser!.uid.toString()) 
                          .set({
                            "Applicant Name":_NameController.text.toString(),
                            "Applicant Phone":_PhoneController.text.toString(),
                            "Applicant Email":_EmailController.text.toString(),
                            "PDF Name":PDFName.toString(),
                            "PDF Url":PdfUrl.toString()
                          })
                          .then((value){
                            _NameController.clear();
                            _PhoneController.clear();
                            _EmailController.clear();
                            setState(() {
                              PDFName="";
                              PdfUrl="";
                              isUploaded=false;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Application Submitted Successfully"),
                              backgroundColor: Colors.green,
                              duration: Duration(seconds: 3),
                            )
                          );
                          });
                        }
                      }, 
                      child: Container(
                        width: (160/360)*ScreenWidth,
                        height: (50/672)*ScreenHeight,
                        child: Row(
                          children: [
                            Text("Submit Application",style: TextStyle(color: Colors.white),),
                            SizedBox(width: (2/360)*ScreenWidth,),
                            Icon(Icons.arrow_circle_up,color: Colors.white,)
                          ],
                        ),
                      )
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}