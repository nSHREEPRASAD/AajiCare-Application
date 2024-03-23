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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: (320/360)*ScreenWidth,
                    height: (200/672)*ScreenHeight,
                    child: Image.network("https://aajicare.in/wp-content/uploads/2023/06/Elder-buddy-banner1.jpg"),
                  ),
                ],
              ),
              SizedBox(height: (10/672)*ScreenHeight,),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text("Aaji Care Elder Buddy",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              Row(
                children: [
                  SizedBox(width: (10/360)*ScreenWidth,),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8),
                    child: Container(
                      width: (300/360)*ScreenWidth,
                      height: (280/672)*ScreenHeight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Elder Buddies are trusted, enthusiastic and passionate young individuals who visit the elderly at their homes and spend quality time with them to enhance their psychological well-being.",
                          style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: (10/672)*ScreenHeight,),
                          Text("* Elders Looking For Meaningful Engagement",
                          style: TextStyle(fontSize: 16,color: Colors.red,fontWeight: FontWeight.bold),
                          ),
                          Text("* Elders Affected By Dementia, Alzheimer’s, Parkison’s Etc",
                          style: TextStyle(fontSize: 16,color: Colors.red,fontWeight: FontWeight.bold),
                          ),
                          Text("* Elders Dealing With Loneliness, Depression, Anxiety, Stress",
                          style: TextStyle(fontSize: 16,color: Colors.red,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: (10/672)*ScreenHeight,),
              Text(" What Does Elder Buddy Do?",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Row(
                children: [
                  SizedBox(width: (10/360)*ScreenWidth,),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8),
                    child: Container(
                      width: (320/360)*ScreenWidth,
                      height: (650/672)*ScreenHeight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("1. INTELLECTUAL COMPANIONSHIP",
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: (300/360)*ScreenWidth,
                            height: (70/672)*ScreenHeight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("# Meaningful conversations",
                                    style: TextStyle(fontSize: 16,),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("# Assistance with hobbies and interests",
                                    style: TextStyle(fontSize: 16,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: (10/672)*ScreenHeight,),
                          Text("2. DEMENTIA CARE AND MANAGEMENT",
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: (300/360)*ScreenWidth,
                            height: (120/672)*ScreenHeight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("# Psychological Assessments",
                                    style: TextStyle(fontSize: 16,),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("# Customized Brain games & activities",
                                    style: TextStyle(fontSize: 16,),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("# Management of Psychological Symptomps",
                                    style: TextStyle(fontSize: 16,),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("# Coordination with Doctors & family",
                                    style: TextStyle(fontSize: 16,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: (10/672)*ScreenHeight,),
                          Text("3. RECREATIONAL ACTIVITIES AND SOCIALIZATION",
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: (300/360)*ScreenWidth,
                            height: (100/672)*ScreenHeight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("# Outing to Gardens, temples, shopping mall etc",
                                    style: TextStyle(fontSize: 16,),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("# Assistance for Social gathering",
                                    style: TextStyle(fontSize: 16,),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("# Board games and activities",
                                    style: TextStyle(fontSize: 16,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: (10/672)*ScreenHeight,),
                          Text("4. TECHNOLOGICAL ASSISTANCE",
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: (300/360)*ScreenWidth,
                            height: (80/672)*ScreenHeight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("# Assistance for learning mobile apps used for daily life",
                                    style: TextStyle(fontSize: 16,),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("# Assistance for Social media",
                                    style: TextStyle(fontSize: 16,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: (10/672)*ScreenHeight,),                         
                          Text("5. COUNSELLING FOR ELDERS AND CARE GIVERS",
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: (300/360)*ScreenWidth,
                            height: (50/672)*ScreenHeight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("# Counselling for family members & Care Attendants",
                                    style: TextStyle(fontSize: 16,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: (300/360)*ScreenWidth,
                    height: (200/672)*ScreenHeight,
                    child: Lottie.asset("assets/animations/ElderCare.json"),
                  ),
                ]
              ),
              SizedBox(height: (20/672)*ScreenHeight,),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text("Key Highlights",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: (10/672)*ScreenHeight,),
              Row(
                children: [
                  SizedBox(width: (15/360)*ScreenWidth,),
                  Container(
                    width: (300/360)*ScreenWidth,
                    height: (80/672)*ScreenHeight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("* PERSONALISED CARE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                        Text("* SKILLED & TRAINED CAREGIVERS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                        Text("* PROCESS-DRIVEN CARE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                        Text("* DAILY EXERCISES & ACTIVITIES",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: (20/672)*ScreenHeight,),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text("Care Giver Responsibility",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: (10/672)*ScreenHeight,),
              Row(
                children: [
                  SizedBox(width: (15/360)*ScreenWidth,),
                  Container(
                    width: (320/360)*ScreenWidth,
                    height: (200/672)*ScreenHeight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("* PERSONAL CARE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                        Text("* TOILETING",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                        Text("* MOBILITY",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                        Text("* NUTRITION",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                        Text("* SUPPORT SERVICES",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                        Text("* ADVANCE CARE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                        Text("* EMERGENCY MANAGEMENT",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                        Text("* MEDICATION / VITAL SIGNS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),)
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}