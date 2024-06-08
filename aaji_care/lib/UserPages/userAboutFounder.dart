import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class userAboutFounder extends StatelessWidget {
  const userAboutFounder({super.key});

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Prasad Bhide"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: (10/672)*ScreenHeight,),
                Container(
                  width: (200/360)*ScreenWidth,
                  height: (200/672)*ScreenHeight,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/PrasadBhide.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 15),
                  child: Column(
                    children: [
                      Text("Prasad Bhide",style: TextStyle(fontSize: (25/672)*ScreenHeight,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,bottom: 5),
                  child: Column(
                    children: [
                      Text("Founder - CEO",style: TextStyle(fontSize: (15/672)*ScreenHeight,color: Colors.grey),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 10),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("I am a social entrepreneur and I am passionate to bring positive difference in services for Elders by empowering them and their families. I started Mumbai's first professional Elder Care Services called as Aaji Care on 15th Aug 2012 with focus to improve quality of care delivered to elderly. I started Aaji Care because of my own personal experience of not getting quality & consistent post operative care at home for my mother and grandmother. I left my corporate job with TCS in 2017 to give 100% to Aaji Care.",
                        style:TextStyle(fontSize: (18/672)*ScreenHeight),
                        ),
                        SizedBox(height: (20/672)*ScreenHeight,),
                        Text("I feel quite excited now with growth of solutions, opportunities, integration of technology in Geriatric Care. I feel there is so much to do.",
                        style:TextStyle(fontSize: (18/672)*ScreenHeight),
                        ),
                        SizedBox(height: (20/672)*ScreenHeight,),
                        Text("I love Adventures, Running, Classical & fusion music & Tea.",
                        style:TextStyle(fontSize: (18/672)*ScreenHeight),
                        ),
                        SizedBox(height: (20/672)*ScreenHeight,),
                        Text("- Prasad Bhide",
                        style:TextStyle(fontSize: (18/672)*ScreenHeight),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("Founder - CEO",
                          style:TextStyle(fontSize: (14/672)*ScreenHeight,color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
                  child: Container(
                    width: (300/360)*ScreenWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Experience :",style: TextStyle(fontSize: (25/672)*ScreenHeight,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,bottom: 5,),
                  child: Card(
                    elevation: 10,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: (10/672)*ScreenHeight,),
                          Row(
                            children: [
                              Icon(Icons.location_city),
                              SizedBox(width: (5/360)*ScreenWidth,),
                              Container(
                                width: (280/360)*ScreenWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Founder",style: TextStyle(fontSize: (18/672)*ScreenHeight,fontWeight: FontWeight.w500),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: (25/360)*ScreenWidth,),
                                Text("OWL Lives · Full-time",style: TextStyle(fontSize: (16/672)*ScreenHeight,),),
                                SizedBox(width: (25/360)*ScreenWidth,),
                                Text("Aug 2022 - Present · 1 yr 1 mo",style: TextStyle(fontSize: (13/672)*ScreenHeight,color: Colors.grey),),
                                SizedBox(width: (25/360)*ScreenWidth,),
                                Text("Thane · On-site",style:TextStyle(fontSize: (13/672)*ScreenHeight,color: Colors.grey), ),
                              ],
                            ),
                          ),
                          SizedBox(height: (10/672)*ScreenHeight,),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 30,bottom: 20),
                            child: Container(
                              child: Column(
                                children: [
                                  Text("OWL stands for Older Wiser Livelier, we intend to make ageing process more engaging, meaningful and fun. O.W.L. team includes creative artists, psychologists, Elder Care Enthusiastic who interacted with several elders to understand their interests, comfort and convenience. We designed India's 1st Happiness Hamper for Elders based on inputs received from hundreds of elders."),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 5),
                  child:
                  Card(
                    elevation: 10,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: (10/672)*ScreenHeight,),
                          Row(
                            children: [
                              Icon(Icons.location_city),
                              SizedBox(width: (5/360)*ScreenWidth,),
                              Container(
                                width: (280/360)*ScreenWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Founder & CEO",style: TextStyle(fontSize: (18/672)*ScreenHeight,fontWeight: FontWeight.w500),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: (25/360)*ScreenWidth,),
                                Text("Aaji Care Home Health Services Pvt Ltd · Full-time",style: TextStyle(fontSize: (16/672)*ScreenHeight,),),
                                SizedBox(width: (25/360)*ScreenWidth,),
                                Text("Aug 2017 - Present · 6 yrs 1 mo",style: TextStyle(fontSize: (13/672)*ScreenHeight,color: Colors.grey),),
                                SizedBox(width: (25/360)*ScreenWidth,),
                                Text("Mumbai Area, India · On-site",style:TextStyle(fontSize: (13/672)*ScreenHeight,color: Colors.grey), ),
                              ],
                            ),
                          ),
                          SizedBox(height: (10/672)*ScreenHeight,),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 30,bottom: 20),
                            child: Container(
                              child: Column(
                                children: [
                                  Text("Aaji Care is leading & award winning Geriatric Care service provide. We provide Care, Comfort & Happiness to elderly suffering with medical, mental health or mobility issues."),
                                  SizedBox(height: (10/672)*ScreenHeight,),
                                  Text("Aaji Care delivers Care, Comfort & Happiness through its 3 key services. First one is long term residential Care services at its Geriatric or Elder Care centers, second is we provide trained and compassionate care givers for Patient Care at Home and third and unique services is Geriatric Counselling or Companionship to elders staying along or facing any mental health issues."),
                                  SizedBox(height: (10/672)*ScreenHeight,),
                                  Text("Skills: Leadership · Entrepreneurship · Problem Solving"),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 5),
                  child: Card(
                    elevation: 10,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: (10/672)*ScreenHeight,),
                          Row(
                            children: [
                              Icon(Icons.work),
                              SizedBox(width: (5/360)*ScreenWidth,),
                              Container(
                                width: (280/360)*ScreenWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Project Manager",style: TextStyle(fontSize: (18/672)*ScreenHeight,fontWeight: FontWeight.w500),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: (25/360)*ScreenWidth,),
                                Text("Tata Consultancy Services",style: TextStyle(fontSize: (16/672)*ScreenHeight,),),
                                SizedBox(width: (25/360)*ScreenWidth,),
                                Text("Nov 2003 - Aug 2017 · 13 yrs 10 mos",style: TextStyle(fontSize: (13/672)*ScreenHeight,color: Colors.grey),),
                                SizedBox(width: (25/360)*ScreenWidth,),
                                Text("Thane",style:TextStyle(fontSize: (13/672)*ScreenHeight,color: Colors.grey), ),
                              ],
                            ),
                          ),
                          ]
                        ),
                      )
                    )
                  ),
                ),
                SizedBox(height: (30/672)*ScreenHeight,),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,),
                  child: Container(
                    width: (300/360)*ScreenWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Education :",style: TextStyle(fontSize: (25/672)*ScreenHeight,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,bottom: 5),
                  child: Card(
                    elevation: 10,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: (10/672)*ScreenHeight,),
                          Row(
                            children: [
                              Icon(Icons.school),
                              SizedBox(width: (5/360)*ScreenWidth,),
                              Container(
                                width: (280/360)*ScreenWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Doctor Babasaheb Ambedkar Technological University",style: TextStyle(fontSize: (18/672)*ScreenHeight,fontWeight: FontWeight.w500),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: (25/360)*ScreenWidth,),
                                Text("B.E.",style:TextStyle(fontSize: (13/672)*ScreenHeight,color: Colors.grey), ),
                                SizedBox(width: (25/360)*ScreenWidth,),
                                Text("1994 - 2000",style:TextStyle(fontSize: (13/672)*ScreenHeight,color: Colors.grey), ),
                              ],
                            ),
                          ),
                          ]
                        ),
                      )
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 10),
                  child: Card(
                    elevation: 10,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: (10/672)*ScreenHeight,),
                          Row(
                            children: [
                              Icon(Icons.school),
                              SizedBox(width: (5/360)*ScreenWidth,),
                              Container(
                                width: (280/360)*ScreenWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("GBV",style: TextStyle(fontSize: (18/672)*ScreenHeight,fontWeight: FontWeight.w500),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: (25/360)*ScreenWidth,),
                                Text("HSC",style:TextStyle(fontSize: (13/672)*ScreenHeight,color: Colors.grey), ),
                                SizedBox(width: (25/360)*ScreenWidth,),
                                Text("1988 - 1992",style:TextStyle(fontSize: (13/672)*ScreenHeight,color: Colors.grey), ),
                              ],
                            ),
                          ),
                          ]
                        ),
                      )
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}