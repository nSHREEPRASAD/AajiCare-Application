import 'package:aaji_care/UserPages/userAdvisoryBoardInfo1.dart';
import 'package:aaji_care/UserPages/userAdvisoryBoardInfo2.dart';
import 'package:aaji_care/UserPages/userAdvisoryBoardInfo3.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class userAdvisoryBoard extends StatelessWidget {
  const userAdvisoryBoard({super.key});

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Our Advisory Board"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: (10/672)*ScreenHeight,),
              InkWell(
                child: Card(
                  elevation: 20,
                  color: Colors.blue,
                  child: Container(
                    width: (300/360)*ScreenWidth,
                    child: Row(
                      children: [
                        Container(
                          width: (100/360)*ScreenWidth,
                          height: (100/672)*ScreenHeight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/images/PriyadarshiniKulkarni.jpg"),
                            ),
                          ),
                        ),
                        SizedBox(width: (5/360)*ScreenWidth,),
                        Container(
                          width: (170/360)*ScreenWidth,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: (10/672)*ScreenHeight,),
                              Text("Dr. Priyadarshini Kulkarni",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: (15/672)*ScreenHeight),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("Ex Medical Director of Cipla Palliative Care",style: TextStyle(color: Colors.white,fontSize: (12/672)*ScreenHeight))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>userAdvisoryBoardInfo1()));
                },
              ),
              SizedBox(height: (10/672)*ScreenHeight,),
              InkWell(
                child: Card(
                  elevation: 20,
                  color: Colors.blue,
                  child: Container(
                    width: (300/360)*ScreenWidth,
                    child: Row(
                      children: [
                        Container(
                          width: (100/360)*ScreenWidth,
                          height: (100/672)*ScreenHeight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/images/ManishPanchal.jpg"),
                            ),
                          ), 
                        ),
                        SizedBox(width: (5/360)*ScreenWidth,),
                        Container(
                          width: (170/360)*ScreenWidth,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: (10/672)*ScreenHeight,),
                              Text("Manish Panchal",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: (15/672)*ScreenHeight),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("Board Member/Strategic Advisor/Author",style: TextStyle(color: Colors.white,fontSize: (12/672)*ScreenHeight))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>userAdvisoryBoardInfo2()));
                },
              ),
              SizedBox(height: (10/672)*ScreenHeight,),
              InkWell(
                child: Card(
                  elevation: 20,
                  color: Colors.blue,
                  child: Container(
                    width: (300/360)*ScreenWidth,
                    child: Row(
                      children: [
                        Container(
                          width: (100/360)*ScreenWidth,
                          height: (100/672)*ScreenHeight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage("assets/images/MittalShah.jpg"),
                            ),
                          ),
                        ),
                        SizedBox(width: (5/360)*ScreenWidth,),
                        Container(
                          width: (170/360)*ScreenWidth,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: (10/672)*ScreenHeight,),
                              Text("Mittal Shah",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: (15/672)*ScreenHeight),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("Bestseller Author",style: TextStyle(color: Colors.white,fontSize: (12/672)*ScreenHeight))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>userAdvisoryBoardInfo3()));
                },
              ),
              SizedBox(height: (20/672)*ScreenHeight,),
              Container(
                width: (300/360)*ScreenWidth,
                height: (200/672)*ScreenHeight,
                child: Lottie.asset("assets/animations/AdvisoryBoardAnimation.json"),
              )
            ]
          ),
        ),
      ),
    );
  }
}