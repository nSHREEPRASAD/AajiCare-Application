import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class userServices3 extends StatelessWidget {
  const userServices3({super.key});

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Elder Care Centre"),
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
                  child: Image.network("https://aajicare.in/wp-content/uploads/2023/06/Elder-buddy-banner1.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Text("Aaji Care Elder Buddy",style: TextStyle(fontSize: (25/672)*ScreenHeight,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Elder Buddies are trusted, enthusiastic and passionate young individuals who visit the elderly at their homes and spend quality time with them to enhance their psychological well-being.",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight),
                    ),
                    SizedBox(height: (10/672)*ScreenHeight,),
                    Text("*Elders Looking For Meaningful Engagement",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight,color: Colors.red,fontWeight: FontWeight.bold),
                    ),
                    Text("*Elders Affected By Dementia, Alzheimer’s, Parkison’s Etc",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight,color: Colors.red,fontWeight: FontWeight.bold),
                    ),
                    Text("*Elders Dealing With Loneliness, Depression, Anxiety, Stress",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight,color: Colors.red,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Text("What Does Elder Buddy Do?",style: TextStyle(fontSize: (25/672)*ScreenHeight,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("1.INTELLECTUAL COMPANIONSHIP",
                            style: TextStyle(fontSize: (16/672)*ScreenHeight,fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15,right: 15),
                            child: Text("#Meaningful conversations",
                              style: TextStyle(fontSize: (16/672)*ScreenHeight,),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                            child: Text("#Assistance with hobbies and interests",
                              style: TextStyle(fontSize: (16/672)*ScreenHeight,),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("2.DEMENTIA CARE AND MANAGEMENT",
                          style: TextStyle(fontSize: (16/672)*ScreenHeight,fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: Text("#Psychological Assessments",
                            style: TextStyle(fontSize: (16/672)*ScreenHeight,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: Text("#Customized Brain games & activities",
                            style: TextStyle(fontSize: (16/672)*ScreenHeight,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: Text("#Management of Psychological Symptomps",
                            style: TextStyle(fontSize: (16/672)*ScreenHeight,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                          child: Text("#Coordination with Doctors & family",
                            style: TextStyle(fontSize: (16/672)*ScreenHeight,),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("3.RECREATIONAL ACTIVITIES AND SOCIALIZATION",
                          style: TextStyle(fontSize: (16/672)*ScreenHeight,fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: Text("#Outing to Gardens, temples, shopping mall etc",
                            style: TextStyle(fontSize: (16/672)*ScreenHeight,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: Text("#Assistance for Social gathering",
                            style: TextStyle(fontSize: (16/672)*ScreenHeight,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                          child: Text("#Board games and activities",
                            style: TextStyle(fontSize: (16/672)*ScreenHeight,),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("4.TECHNOLOGICAL ASSISTANCE",
                          style: TextStyle(fontSize: (16/672)*ScreenHeight,fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: Text("#Assistance for learning mobile apps used for daily life",
                            style: TextStyle(fontSize: (16/672)*ScreenHeight,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                          child: Text("#Assistance for Social media",
                            style: TextStyle(fontSize: (16/672)*ScreenHeight,),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("5.COUNSELLING FOR ELDERS AND CARE GIVERS",
                          style: TextStyle(fontSize: (16/672)*ScreenHeight,fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                          child: Text("#Counselling for family members & Care Attendants",
                            style: TextStyle(fontSize: (16/672)*ScreenHeight,),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                child: Container(
                  width: (300/360)*ScreenWidth,
                  height: (200/672)*ScreenHeight,
                  child: Lottie.asset("assets/animations/ElderCare.json"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                child: Text("Key Highlights",style: TextStyle(fontSize: (25/672)*ScreenHeight,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: (10/672)*ScreenHeight,),
              SizedBox(width: (15/360)*ScreenWidth,),
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