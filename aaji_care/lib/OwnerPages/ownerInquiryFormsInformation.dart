import 'package:aaji_care/OwnerPages/ownerHome.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ownerInquiryFormsInformation extends StatefulWidget {
  var ContactNo;
  var Email;
  var Message;
  var Name;
  var Service;
  var Id;

  ownerInquiryFormsInformation(
    this.ContactNo,
    this.Email,
    this.Message,
    this.Name,
    this.Service,
    this.Id
  );

  @override
  State<ownerInquiryFormsInformation> createState() => _ownerInquiryFormsInformationState(ContactNo,Email,Message,Name,Service,Id);
}

class _ownerInquiryFormsInformationState extends State<ownerInquiryFormsInformation> {
  var ContactNo;
  var Email;
  var Message;
  var Name;
  var Service;
  var Id;

  _ownerInquiryFormsInformationState(
    this.ContactNo,
    this.Email,
    this.Message,
    this.Name,
    this.Service,
    this.Id
  );
  final _key = GlobalKey<FormState>();
  TextEditingController _ReplyController = TextEditingController();
  String defaultVal="";
  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    final _firestoreDB = FirebaseFirestore.instance.collection("InquiryReply");
    final _firestoreDBInquiry = FirebaseFirestore.instance.collection("Inquiry").doc(Id);
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold( 
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,  
        title: Text("Inquiry Form"),
        actions: [
          Row(
            children: [
              DropdownButton(
                icon: Icon(Icons.menu),
                isDense: true,
                items: [
                  DropdownMenuItem(
                    child: Text("Reply"),
                    value: "Reply",
                  )
                ], 
                onChanged: (String? NewVal){
                  setState(() {
                    defaultVal=NewVal!;
                  });
                  if(defaultVal=="Reply"){
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context, 
                      builder: (context){
                        return Padding(
                          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: Container(
                          height: (130/672)*ScreenHeight,
                          child: Form(
                            key: _key,
                            child: ListView(
                              children: [
                                SizedBox(height: (20/672)*ScreenHeight,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    controller: _ReplyController,
                                    validator: (value) {
                                      if(value!.isNotEmpty){
                                        return null;
                                      }
                                      else{
                                        return "Please Enter a Reply";
                                      }
                                    },
                                    maxLines: 2,
                                    maxLength: 300,
                                    decoration: InputDecoration(
                                      hintText: "Reply",
                                      suffixIcon: IconButton(
                                        onPressed: (){
                                          if(!_key.currentState!.validate()){
                                            return;
                                          }
                                          else{
                                            _firestoreDB.doc(Id).set({
                                              "Reply":_ReplyController.text.toString(),
                                              "ownerEmail":_auth.currentUser!.email.toString()
                                            }).then((value){
                                              _ReplyController.clear();
                                              _firestoreDBInquiry.delete();
                                              ScaffoldMessenger.of(context).showSnackBar(
                                                SnackBar(
                                                  content: Text("Reply Given"),
                                                  backgroundColor: Colors.green,
                                                  duration: Duration(seconds: 2),
                                                )
                                              );
                                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OwnerHome(_auth.currentUser!.email, "Owner")));
                                            });
                                          }
                                        }, 
                                        icon: Icon(Icons.send)
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(11),
                                        borderSide: BorderSide(
                                          color: Colors.grey,
                                          width: (2/360)*ScreenWidth
                                        )
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(11),
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: (2/360)*ScreenWidth
                                        )
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(11),
                                        borderSide: BorderSide(
                                          color: Colors.red,
                                          width: (2/360)*ScreenWidth
                                        )
                                      )
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ),
                          ),
                        );
                      }
                    );
                  }
                }
              ),
              SizedBox(width: (20/360)*ScreenWidth,)
            ],
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
            child: Card(
              elevation: 5,
              child: Container(
                height: (550/672)*ScreenHeight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Text("Name :",style: TextStyle(fontSize: (18/672)*ScreenHeight),),
                          title: Text("$Name",style: TextStyle(fontSize: (18/672)*ScreenHeight),),
                        ),
                        ListTile(
                          leading: Text("Email : ",style: TextStyle(fontSize: (18/672)*ScreenHeight),),
                          title: Text("$Email",style: TextStyle(fontSize: (18/672)*ScreenHeight),),
                          trailing: IconButton(
                              onPressed: ()async{
                                final Uri mail=Uri(
                                  scheme: "mailto",
                                  path: Email.toString()
                                );
                                if(await canLaunchUrl(mail)){
                                  await launchUrl(mail);
                                }
                              }, 
                              icon: Icon(Icons.mail,color: Colors.blueGrey,)),
                        ),
                        ListTile(
                          leading: Text("Contact No :",style: TextStyle(fontSize: (18/672)*ScreenHeight),),
                          title: Text("$ContactNo",style: TextStyle(fontSize: (18/672)*ScreenHeight),),
                          trailing: IconButton(
                              onPressed: ()async{
                                final Uri phone=Uri(
                                  scheme: "tel",
                                  path: ContactNo.toString()
                                );
                                if(await canLaunchUrl(phone)){
                                  await launchUrl(phone);
                                }
                              }, 
                              icon: Icon(Icons.call,color: Colors.green,)
                            )
                        ),
                        ListTile(
                          leading: Text("Service :",style: TextStyle(fontSize: (18/672)*ScreenHeight),),
                          title: Text("$Service",style: TextStyle(fontSize: (18/672)*ScreenHeight),),
                        ),
                        ListTile(
                          leading: Text("Message :",style: TextStyle(fontSize: (18/672)*ScreenHeight),),
                        ),
                        ListTile(
                          title: Text("$Message",style: TextStyle(fontSize: (18/672)*ScreenHeight),),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}