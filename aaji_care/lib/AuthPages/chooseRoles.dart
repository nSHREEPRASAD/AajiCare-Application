import 'package:aaji_care/AuthPages/signUpUser.dart';
import 'package:aaji_care/AuthPages/signUpOwner.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ChooseRoles extends StatefulWidget {
  const ChooseRoles({super.key});

  @override
  State<ChooseRoles> createState() => _ChooseRolesState();
}

class _ChooseRolesState extends State<ChooseRoles> {
  int _val=0;
  bool isLoading=false;
  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Roles"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: isLoading==true? Center(child: CircularProgressIndicator()):
      Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: (50/672)*ScreenHeight,),
            Container(
              width: (200/360)*ScreenWidth,
              height: (200/672)*ScreenHeight,
              child: Lottie.asset("assets/animations/ChooseOption.json"),
            ),
            SizedBox(height: (10/672)*ScreenHeight,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(11),
              ),
              width: (300/360)*ScreenWidth,
              child: Column(
                children: [
                  Row(
                    children: [
                      Radio(
                        value: 1, 
                        groupValue: _val, 
                        onChanged: (value){
                          setState(() {
                            _val=value!;
                          });
                        }
                      ),
                      Text("User"),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 2, 
                        groupValue: _val, 
                        onChanged: (value){
                          setState(() {
                            _val=value!;
                          });
                        }
                      ),
                      Text("Admin"),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 3, 
                        groupValue: _val, 
                        onChanged: (value){
                          setState(() {
                            _val=value!;
                          });
                        }
                      ),Text("Doctor")
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 4, 
                        groupValue: _val, 
                        onChanged: (value){
                          setState(() {
                            _val=value!;
                          });
                        }
                      ),
                      Text("Employee"),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 5, 
                        groupValue: _val, 
                        onChanged: (value){
                          setState(() {
                            _val=value!;
                          });
                        }
                      ),
                      Text("Medical"),
                    ],
                  ),
                  SizedBox(height: (5/672)*ScreenHeight,),
                  ElevatedButton(
                    onPressed: (){
                      if(_val==0){
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Please Choose Role"),
                              backgroundColor: Colors.red,
                              duration: Duration(seconds: 2),
                            )
                          );
                        }
                        else if(_val==1){
                          setState(() {
                            isLoading=true;
                          });
                          Future.delayed(Duration(seconds: 1),(){
                            setState(() {
                              isLoading=false;
                            });
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpUser()));
                          });
                        }
                        else if(_val==2){
                          setState(() {
                            isLoading=true;
                          });
                          Future.delayed(Duration(seconds: 1),(){
                            setState(() {
                              isLoading=false;
                            });
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpOwner()));
                          });
                        }
                    }, 
                    child: Text("Submit Choice")
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}