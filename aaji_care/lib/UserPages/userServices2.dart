import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class userServices2 extends StatelessWidget {
  const userServices2({super.key});

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Patient Care Centre"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: (10/672)*ScreenHeight,),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Container(
                  width: (320/360)*ScreenWidth,
                  height: (200/672)*ScreenHeight,
                  child: Image.network("https://aajicare.in/wp-content/uploads/elementor/thumbs/pt-care3-1-piplp6i7dxk0bbi9cy1uqnodmcr5t83aogzmv4z7aw.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Text("What Challenges Do We Address ?",style: TextStyle(fontSize: (25/672)*ScreenHeight,fontWeight: FontWeight.bold),),
              ),
              SizedBox(width: (10/360)*ScreenWidth,),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Through our patient care at home service, we address challenges families with the elderly & patients in metro cities who cannot find trained and trusted care givers for their loved ones at home. Patient care at home can be provided for",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight),
                    ),
                    SizedBox(height: (10/672)*ScreenHeight,),
                    Text("*Alzheimer's and Dementia Care",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight,color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    Text("*Support for Stroke, Parkinson, Paralysis Recovery",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight,color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    Text("*Respite Care",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight,color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    Text("*Palliative/end of life care",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight,color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    Text("*Long term chronic diseases like diabetic",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight,color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    Text("*Mobility issue",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight,color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    Text("*Support for elderly staying alone",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight,color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Text("What We Offer",style: TextStyle(fontSize: (25/672)*ScreenHeight,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("We offer 12 and 24 hrs trained, trustworthy and compassionate Care Givers, Nursing assistants to take care of activities of daily living, and basic/advanced nursing care for patients and elders.",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Container(
                  width: (300/360)*ScreenWidth,
                  height: (200/672)*ScreenHeight,
                  child: Lottie.asset("assets/animations/ElderCare2.json"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Text("Key Highlights",style: TextStyle(fontSize: (25/672)*ScreenHeight,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("*PERSONALISED CARE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*SKILLED & TRAINED CAREGIVERS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*PROCESS-DRIVEN CARE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*DAILY EXERCISES & ACTIVITIES",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Text("Care Giver Responsibility",style: TextStyle(fontSize: (25/672)*ScreenHeight,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("*PERSONAL CARE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*TOILETING",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*MOBILITY",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*NUTRITION",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*SUPPORT SERVICES",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*ADVANCE CARE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*EMERGENCY MANAGEMENT",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*MEDICATION / VITAL SIGNS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}