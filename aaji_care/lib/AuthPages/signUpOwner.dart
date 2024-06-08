import 'package:aaji_care/AuthPages/authAnimation.dart';
import 'package:aaji_care/AuthPages/signIn.dart';
import 'package:aaji_care/UserPages/userHome.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class SignUpOwner extends StatefulWidget {
  const SignUpOwner({super.key});

  @override
  State<SignUpOwner> createState() => _SignUpOwnerState();
}

class _SignUpOwnerState extends State<SignUpOwner> {
  bool isLoading=false;
  bool _obscure=true;
  bool _obscure_1=true;
  final key1=GlobalKey<FormState>();
  final key2=GlobalKey<FormState>();
  final key3=GlobalKey<FormState>();
  final key4=GlobalKey<FormState>();
  TextEditingController _NameController = TextEditingController();
  TextEditingController _EmailController = TextEditingController();
  TextEditingController _PasswordController = TextEditingController();
  TextEditingController _OwnerCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _auth=FirebaseAuth.instance;
    final _firestore=FirebaseFirestore.instance.collection("Users");

    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Owner-Sign Up"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: isLoading==true? Center(child: CircularProgressIndicator(),):
      Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: (10/672)*ScreenHeight,),
              Container(
                width: (200/360)*ScreenWidth,
                height: (180/672)*ScreenHeight,
                child: Lottie.asset("assets/animations/OldAgeCare.json"),
              ),
              Container(
                width: (320/360)*ScreenWidth,
                height: (400/672)*ScreenHeight,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("Welcome,",style: TextStyle(fontSize: (30/672)*ScreenHeight,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text("Create an account",style: TextStyle(fontSize: (20/672)*ScreenHeight),),
                      ),
                      SizedBox(height: (10/672)*ScreenHeight,),
                      Row(
                        children: [
                          SizedBox(width: (5/360)*ScreenWidth,),
                          Container(
                            width: (300/360)*ScreenWidth,
                            child: Form(
                              key: key1,
                              child: TextFormField(
                                validator: (value) {
                                  if(value!.isNotEmpty){
                                    return null;
                                  }
                                  else{
                                    return "Please Enter Name";
                                  }
                                },
                                controller: _NameController,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  hintText: "Name",
                                  prefixIcon: Icon(Icons.person),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: (2/360)*ScreenWidth,
                                    )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: (2/360)*ScreenWidth,
                                    )
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: (2/360)*ScreenWidth,
                                    )
                                  ), 
                                ),
                              )
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: (10/672)*ScreenHeight,),
                      Row(
                        children: [
                          SizedBox(width: (5/360)*ScreenWidth,),
                          Container(
                            width: (300/360)*ScreenWidth,
                            child: Form(
                              key: key2,
                              child: TextFormField(
                                validator: (value) {
                                  if(value!.isNotEmpty){
                                    return null;
                                  }
                                  else{
                                    return "Please Enter Email Address";
                                  }
                                },
                                controller: _EmailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: "Email Address",
                                  prefixIcon: Icon(Icons.email),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: (2/360)*ScreenWidth,
                                    )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: (2/360)*ScreenWidth,
                                    )
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: (2/360)*ScreenWidth,
                                    )
                                  ), 
                                ),
                              )
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: (10/672)*ScreenHeight,),
                      Row(
                        children: [
                          SizedBox(width: (5/360)*ScreenWidth,),
                          Container(
                            width: (300/360)*ScreenWidth,
                            child: Form(
                              key: key3,
                              child: TextFormField(
                                obscureText: _obscure_1,
                                validator: (value) {
                                  if(value!.isNotEmpty){
                                    return null;
                                  }
                                  else{
                                    return "Please Enter Password";
                                  }
                                },
                                controller: _PasswordController,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  suffixIcon: IconButton(
                                  onPressed:(){
                                    setState(() {
                                      _obscure_1=!_obscure_1;
                                    });
                                  } , 
                                  icon: _obscure_1==true?Icon(Icons.remove_red_eye):Icon(Icons.cancel)),
                                  prefixIcon: Icon(Icons.lock),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: (2/360)*ScreenWidth,
                                    )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: (2/360)*ScreenWidth,
                                    )
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: (2/360)*ScreenWidth,
                                    )
                                  ), 
                                ),
                              )
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: (10/672)*ScreenHeight,),
                      Row(
                        children: [
                          SizedBox(width: (5/360)*ScreenWidth,),
                          Container(
                            width: (300/360)*ScreenWidth,
                            child: Form(
                              key: key4,
                              child: TextFormField(
                                obscureText: _obscure,
                                validator: (value) {
                                  if(value!.isNotEmpty){
                                    if(value!="OWNER@123"){
                                      return "Please Enter Valid Owner Code";
                                    }
                                    else{
                                      return null;
                                    }
                                  }
                                  else{
                                    return "Please Enter Owner Code";
                                  }
                                },
                                controller: _OwnerCodeController,
                                decoration: InputDecoration(
                                  hintText: "Owner Code",
                                  suffixIcon: IconButton(
                                  onPressed:(){
                                    setState(() {
                                      _obscure=!_obscure;
                                    });
                                  } , 
                                  icon: _obscure==true?Icon(Icons.remove_red_eye):Icon(Icons.cancel)),
                                  prefixIcon: Icon(Icons.key),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: (2/360)*ScreenWidth,
                                    )
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: (2/360)*ScreenWidth,
                                    )
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                      width: (2/360)*ScreenWidth,
                                    )
                                  ), 
                                ),
                              )
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: (5/672)*ScreenHeight,),
                      Row(
                        children: [
                          SizedBox(width: (5/360)*ScreenWidth,),
                          Text("Already have an account ? Sign In."),
                          SizedBox(width: (2/360)*ScreenWidth,),
                          TextButton(
                            onPressed: (){
                              setState(() {
                                isLoading=true;
                              });
                              Future.delayed(Duration(seconds: 1),(){
                                setState(() {
                                  isLoading=false;
                                });
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignIn()));
                              });
                            }, 
                            child: Text("Sign In")
                          )
                        ],
                      ),
                      Container(
                        width: (300/360)*ScreenWidth,
                        child: ElevatedButton(
                          onPressed: (){
                            if(!key1.currentState!.validate() || !key2.currentState!.validate() || !key3.currentState!.validate() ||!key4.currentState!.validate()){
                              return;
                            }
                            else{
                              _auth.createUserWithEmailAndPassword(
                                email: _EmailController.text.toString(), 
                                password: _PasswordController.text.toString()
                              ).then((value){
                                _firestore.doc(_auth.currentUser!.uid.toString()).set({
                                  "Name":_NameController.text.toString(),
                                  "Email Address":_EmailController.text.toString(),
                                  "Role":"Owner",
                                }).then((value){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>authAnimation(_EmailController.text.toString(),"Owner")));
                                });
                              }).onError((error, stackTrace){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("User Already Exists"),
                                    backgroundColor: Colors.red,
                                    duration: Duration(seconds: 2),
                                  )
                                );
                              });
                            }
                          }, 
                          child: Text("Sign Up")
                        )
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}