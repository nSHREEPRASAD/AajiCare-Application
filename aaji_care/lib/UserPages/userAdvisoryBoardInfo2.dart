import 'package:flutter/material.dart';

class userAdvisoryBoardInfo2 extends StatelessWidget {
  const userAdvisoryBoardInfo2({super.key});

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Manish Panchal"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: (10/672)*ScreenHeight,),
              Container(
                width: (200/360)*ScreenWidth,
                height: (200/672)*ScreenHeight,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/ManishPanchal.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                child: Column(
                  children: [
                    Text("Manish Panchal",style: TextStyle(fontSize: (25/672)*ScreenHeight,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                child: Column(
                  children: [
                    Text("Board Member/Strategic Advisor/Author",style: TextStyle(fontSize: (15/672)*ScreenHeight,color: Colors.grey),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  width: (320/360)*ScreenWidth,
                  child: Column(
                    children: [
                      Text("Mr. Panchal is an Independent Director of IL&FS AMF. He was Senior Practice Head-Life Sciences & Healthcare at Tata Strategic Management Group. Mr. Panchal has over 27 years of professional experience and has worked with leading transnational healthcare companies like Abbott, J&J and B.Braun.",
                      style:TextStyle(fontSize: (18/672)*ScreenHeight),
                      ),
                      SizedBox(height: (10/672)*ScreenHeight,),
                      Text("Mr. Panchal has full business cycle work experience, which includes Sales & Marketing, Business Development, planning and executing corporate strategy, business and operational process improvement, and managing Indepedent P&L.",
                      style:TextStyle(fontSize: (18/672)*ScreenHeight),
                      ),
                      SizedBox(height: (10/672)*ScreenHeight,),
                      Text("Mr. Panchal is a recognized thought leader and has received several awards for his contribution to Industry & Academia. Mr. Panchal holds a Masters in Management from the Asian Institute of Management (AIM), Manila, Philippines.",
                      style:TextStyle(fontSize: (18/672)*ScreenHeight),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}