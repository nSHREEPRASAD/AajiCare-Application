import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class userAdvisoryBoardInfo1 extends StatelessWidget {
  const userAdvisoryBoardInfo1({super.key});

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Dr. Priyadarshini Kulkarni"),
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
                  backgroundImage: AssetImage("assets/images/PriyadarshiniKulkarni.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                child: Column(
                  children: [
                    Text("Dr. Priyadarshini Kulkarni",style: TextStyle(fontSize: (25/672)*ScreenHeight,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                child: Column(
                  children: [
                    Text("Ex Medical Director Of Cipla Palliative Care",style: TextStyle(fontSize: (15/672)*ScreenHeight,color: Colors.grey),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  width: (320/360)*ScreenWidth,
                  child: Column(
                    children: [
                      Text("Dr. Priyadarshini Kulkarni is a Fellow of the National Cancer Centre in Singapore. An anesthetist by training, Dr. Kulkarni has been successful palliative care specialist for the past 19 years. She has completed a Graduate Certificate in Health (Palliative Medicine) from Flinders University, Adelaide, Australia. She also completed MSc in Palliative Medicine from Cardiff University, UK.",
                      style:TextStyle(fontSize: (18/672)*ScreenHeight),
                      ),
                      SizedBox(height: (20/672)*ScreenHeight,),
                      Text("The previous prestigious positions held by her are Medical Director of Cipla Palliative Care and Training Centre, Pune; National Secretary of the Indian Assosiation of Palliative Care.",
                      style:TextStyle(fontSize: (18/672)*ScreenHeight),
                      ),
                      SizedBox(height: (20/672)*ScreenHeight,),
                      Text("She has served as a board member of the Worldwide Hospice Palliative Care Alliance (WHPCA), and Asia Pacific Hospice Palliative Care Network (APHN).",
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