import 'package:flutter/material.dart';

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
                SizedBox(height: (10/672)*ScreenHeight,),
                Row(
                  children: [
                    SizedBox(width: (20/360)*ScreenWidth,),
                    Text("Prasad Bhide",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: (20/360)*ScreenWidth,),
                    Text("Founder - CEO",style: TextStyle(fontSize: 15,color: Colors.grey),),
                  ],
                ),
                SizedBox(height: (20/672)*ScreenHeight,),
                Container(
                  width: (320/360)*ScreenWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("I am a social entrepreneur and I am passionate to bring positive difference in services for Elders by empowering them and their families. I started Mumbai's first professional Elder Care Services called as Aaji Care on 15th Aug 2012 with focus to improve quality of care delivered to elderly. I started Aaji Care because of my own personal experience of not getting quality & consistent post operative care at home for my mother and grandmother. I left my corporate job with TCS in 2017 to give 100% to Aaji Care.",
                      style:TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: (20/672)*ScreenHeight,),
                      Text("I feel quite excited now with growth of solutions, opportunities, integration of technology in Geriatric Care. I feel there is so much to do.",
                      style:TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: (20/672)*ScreenHeight,),
                      Text("I love Adventures, Running, Classical & fusion music & Tea.",
                      style:TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: (20/672)*ScreenHeight,),
                      Text("- Prasad Bhide",
                      style:TextStyle(fontSize: 18),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Founder - CEO",
                        style:TextStyle(fontSize: 14,color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: (30/672)*ScreenHeight,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Experience :-",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    ), 
                  ],
                ),
                SizedBox(height: (10/672)*ScreenHeight,),
                Card(
                  elevation: 10,
                  child: Container(
                    width: (320/360)*ScreenWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: (10/672)*ScreenHeight,),
                        Row(
                          children: [
                            Icon(Icons.location_city),
                            SizedBox(width: (5/360)*ScreenWidth,),
                            Text("Founder",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: (25/360)*ScreenWidth,),
                            Text("OWL Lives · Full-time",style: TextStyle(fontSize: 16,),),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: (25/360)*ScreenWidth,),
                            Text("Aug 2022 - Present · 1 yr 1 mo",style: TextStyle(fontSize: 13,color: Colors.grey),),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: (25/360)*ScreenWidth,),
                            Text("Thane · On-site",style:TextStyle(fontSize: 13,color: Colors.grey), ),
                          ],
                        ),
                        SizedBox(height: (10/672)*ScreenHeight,),
                        Row(
                          children: [
                            SizedBox(width: (25/360)*ScreenWidth,),
                            Container(
                              width: (280/360)*ScreenWidth,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 30),
                                child: Column(
                                  children: [
                                    Text("OWL stands for Older Wiser Livelier, we intend to make ageing process more engaging, meaningful and fun. O.W.L. team includes creative artists, psychologists, Elder Care Enthusiastic who interacted with several elders to understand their interests, comfort and convenience. We designed India's 1st Happiness Hamper for Elders based on inputs received from hundreds of elders."),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: (10/672)*ScreenHeight,),
                Card(
                  elevation: 10,
                  child: Container(
                    width: (320/360)*ScreenWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: (10/672)*ScreenHeight,),
                        Row(
                          children: [
                            Icon(Icons.location_city),
                            SizedBox(width: (5/360)*ScreenWidth,),
                            Text("Founder & CEO",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: (25/360)*ScreenWidth,),
                            Container(
                              width: (280/360)*ScreenWidth,
                              child: Column(
                                children: [
                                  Text("Aaji Care Home Health Services Pvt Ltd · Full-time",style: TextStyle(fontSize: 16,),),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: (25/360)*ScreenWidth,),
                            Text("Aug 2017 - Present · 6 yrs 1 mo",style: TextStyle(fontSize: 13,color: Colors.grey),),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: (25/360)*ScreenWidth,),
                            Text("Mumbai Area, India · On-site",style:TextStyle(fontSize: 13,color: Colors.grey), ),
                          ],
                        ),
                        SizedBox(height: (10/672)*ScreenHeight,),
                        Row(
                          children: [
                            SizedBox(width: (25/360)*ScreenWidth,),
                            Container(
                              width: (280/360)*ScreenWidth,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 30),
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
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: (10/672)*ScreenHeight,),
                Card(
                  elevation: 10,
                  child: Container(
                    width: (320/360)*ScreenWidth,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: (10/672)*ScreenHeight,),
                          Row(
                            children: [
                              Icon(Icons.work),
                              SizedBox(width: (5/360)*ScreenWidth,),
                              Text("Project Manager",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: (25/360)*ScreenWidth,),
                              Text("Tata Consultancy Services",style: TextStyle(fontSize: 16,),),
                            ],
                          ),
                         Row(
                            children: [
                              SizedBox(width: (25/360)*ScreenWidth,),
                              Text("Nov 2003 - Aug 2017 · 13 yrs 10 mos",style: TextStyle(fontSize: 13,color: Colors.grey),),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: (25/360)*ScreenWidth,),
                              Text("Thane",style: TextStyle(fontSize: 13,color: Colors.grey),),
                            ],
                          ),
                        ]
                      ),
                    )
                  )
                ),
                SizedBox(height: (30/672)*ScreenHeight,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Education :-",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    ), 
                  ],
                ),
                SizedBox(height: (10/672)*ScreenHeight,),
                Card(
                  elevation: 10,
                  child: Container(  
                    width: (320/360)*ScreenWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: (10/672)*ScreenHeight,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.school),
                            SizedBox(width: (5/360)*ScreenWidth,),
                            Container(
                              width: (250/360)*ScreenWidth,
                              child: Column(
                                children: [
                                  Text("Doctor Babasaheb Ambedkar Technological University",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                                ],
                              ),
                            ),
                          ],
                        ),
                       Row(
                          children: [
                            SizedBox(width: (25/360)*ScreenWidth,),
                            Padding(
                              padding: const EdgeInsets.only(left: 5,bottom: 30),
                              child: Text("1994 - 2000",style: TextStyle(fontSize: 13,color: Colors.grey),),
                            ),
                          ],
                        ),
                      ]
                    )
                  ),
                ),
                SizedBox(height: (10/672)*ScreenHeight,),
                Card(
                  elevation: 10,
                  child: Container(
                    width: (320/360)*ScreenWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: (10/672)*ScreenHeight,),
                        Row(
                          children: [
                            Icon(Icons.school),
                            SizedBox(width: (5/360)*ScreenWidth,),
                            Text("GBV",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                          ],
                        ),
                       Row(
                          children: [
                            SizedBox(width: (25/360)*ScreenWidth,),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("HSC",style: TextStyle(fontSize: 13,color: Colors.grey),),
                            ),
                          ],
                        ),
                       Row(
                          children: [
                            SizedBox(width: (25/360)*ScreenWidth,),
                            Padding(
                              padding: const EdgeInsets.only(left: 5,bottom: 30),
                              child: Text("1994 - 2000",style: TextStyle(fontSize: 13,color: Colors.grey),),
                            ),
                          ],
                        ),
                      ]
                    )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}