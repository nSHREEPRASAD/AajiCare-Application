import 'package:aaji_care/UserPages/userAdvisoryBoard.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class userAboutUs extends StatefulWidget {
  const userAboutUs({super.key});

  @override
  State<userAboutUs> createState() => _userAboutUsState();
}

class _userAboutUsState extends State<userAboutUs> {
  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: (300/360)*ScreenWidth,
              child: Stack(
                children: [
                  Image.network("https://www.startupurban.com/wp-content/uploads/2018/08/aaji-care.jpg"),
                  Positioned(
                    bottom: (0/672)*ScreenHeight,
                    left: (30/672)*ScreenHeight,
                    right: (30/672)*ScreenHeight,
                    child: Column(
                      children: [
                        Text("An Elder Care Service, you can Trust !",style: TextStyle(fontSize: (20/672)*ScreenHeight,fontWeight: FontWeight.w900,color: Colors.white,fontStyle: FontStyle.italic),),
                        SizedBox(height: (5/672)*ScreenHeight,),
                      ],
                    )
                  ),
                ],
              )
            ),
            SizedBox(height: (10/672)*ScreenHeight,),
            Card(
              elevation: 5,
              child: Container(
                width: (300/360)*ScreenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              color: Colors.blue,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Who we are, What we do",style: TextStyle(fontSize: (22/672)*ScreenHeight,color: Colors.white,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              )
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Icon(Icons.star,color: Colors.amber[900],size: (30/672)*ScreenHeight,),
                          SizedBox(width: (2/360)*ScreenWidth,),
                          Container(
                            width: (240/360)*ScreenWidth,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("OUR MISSION",style: TextStyle(fontSize: (30/672)*ScreenHeight,color: Colors.blue,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40,right: 40,bottom: 20),
                      child: Container(
                        width: (250/360)*ScreenWidth,
                        child: Text("TO EMPOWER SENIORS & CAREGIVERS TO LEAD HAPPY & DIGNIFIED LIFE",style: TextStyle(fontSize: (15/672)*ScreenHeight,color: Colors.blue,fontWeight: FontWeight.bold),),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: (5/672)*ScreenHeight,),
            Card(
              elevation: 5,
              child: Container(
                width: (300/360)*ScreenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              color: Colors.blue,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Who we aspire to be",style: TextStyle(fontSize: (22/672)*ScreenHeight,color: Colors.white,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              )
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Icon(Icons.remove_red_eye,color: Colors.black,size: (30/672)*ScreenHeight,),
                          SizedBox(width: (2/360)*ScreenWidth,),
                          Container(
                            width: (240/360)*ScreenWidth,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("VISION",style: TextStyle(fontSize: (30/672)*ScreenHeight,color: Colors.blue,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40,right: 40,bottom: 20),
                      child: Container(
                        width: (250/360)*ScreenWidth,
                        child: Text("TO BE A LEADER IN GERIATRIC CARE",style: TextStyle(fontSize: (15/672)*ScreenHeight,color: Colors.blue,fontWeight: FontWeight.bold),),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: (20/672)*ScreenHeight,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: (300/360)*ScreenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Aaji Care 5C Approach To Deliver Geriatric Care",style: TextStyle(fontSize: (25/672)*ScreenHeight,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
            SizedBox(height: (5/672)*ScreenHeight,),
            Container(
              child: CarouselSlider(
                items: [
                  Card(
                    elevation: 5,
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: (210/360)*ScreenWidth,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text("#1",style: TextStyle(fontSize: (25/672)*ScreenHeight,color: Colors.white,fontWeight: FontWeight.bold),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("Compassion",style: TextStyle(fontSize: (25/672)*ScreenHeight,color: Colors.white,fontWeight: FontWeight.bold),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("Compassion is at the heart of Care we deliver across all of our Facilities or at Home.",style: TextStyle(color: Colors.white,fontSize: (15/672)*ScreenHeight,))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5, 
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: (210/360)*ScreenWidth,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text("#2",style: TextStyle(fontSize: (25/672)*ScreenHeight,color: Colors.blue, fontWeight: FontWeight.bold),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("Clarity",style: TextStyle(fontSize: (25/672)*ScreenHeight,color: Colors.blue,fontWeight: FontWeight.bold),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("Our mission is guiding force to give clarity for everything we do in our organization.",style: TextStyle(color: Colors.blue,fontSize: (15/672)*ScreenHeight,))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: (210/360)*ScreenWidth,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text("#3",style: TextStyle(fontSize: (25/672)*ScreenHeight,color: Colors.white,fontWeight: FontWeight.bold),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("Competence",style: TextStyle(fontSize: (25/672)*ScreenHeight,color: Colors.white,fontWeight: FontWeight.bold),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("We focus on building competence in the team to deliver right care and it is a continuous process at Aaji Care.",style: TextStyle(color: Colors.white,fontSize: (15/672)*ScreenHeight,))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5, 
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: (210/360)*ScreenWidth,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text("#4",style: TextStyle(fontSize: (25/672)*ScreenHeight,color: Colors.blue,fontWeight: FontWeight.bold),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("Consistency",style: TextStyle(fontSize: (25/672)*ScreenHeight,color: Colors.blue,fontWeight: FontWeight.bold),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("We have been delivering consistent and uninterrupted service any break-even during peak of Covid waves.",style: TextStyle(color: Colors.blue,fontSize: (15/672)*ScreenHeight,),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: (210/360)*ScreenWidth,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text("#5",style: TextStyle(fontSize: (25/672)*ScreenHeight,color: Colors.white,fontWeight: FontWeight.bold),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("Commitment",style: TextStyle(fontSize: (25/672)*ScreenHeight,color: Colors.white,fontWeight: FontWeight.bold),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("Entire Aaji Care team is committed to treat elders with dignity, love & care",style: TextStyle(color: Colors.white,fontSize: (15/672)*ScreenHeight),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ], 
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                )
              ),
            ),
            SizedBox(height: (10/672)*ScreenHeight,),
            Container(
              width: (300/360)*ScreenWidth,
              child: Column(
                children: [
                  Text(
                    "Hello Everyone ! This is Elder Care Service home named as “Aaji Care”. Aaji Care Home Health Services Private Limited was invented on 15 Aug 2012.",
                    style: TextStyle(fontSize: (20/672)*ScreenHeight),
                  ),
                  SizedBox(height: (20/672)*ScreenHeight,),
                  Text(
                    "Aaji Care is Mumbai's Most Trusted Elder Care Service provider and delivering care with smiles from 2012. We are on a mission “To empower seniors and caregivers to lead a happy and dignified life”. We are here to deliver long-term, innovative and meaningful solutions to geriatric care challenges faced by individuals and families in metro cities across India.",
                    style: TextStyle(fontSize: (20/672)*ScreenHeight),
                  ),
                  SizedBox(height: (20/672)*ScreenHeight,),
                  Text(
                    "Our Specialities are at Elder Care, Geriatric Care, Dementia Care, Patient Care at Home, Senior Care at Home, Geriatric Care Clinic, Care Givers, and Palliative Care.",
                    style: TextStyle(fontSize: (20/672)*ScreenHeight),
                  )
                ],
              ),
            ),
            SizedBox(height: (10/672)*ScreenHeight,),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  elevation: 10,
                  color: Colors.blue,
                  child: Container(
                    width: (300/360)*ScreenWidth,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: (5/672)*ScreenHeight,),
                          Text("Advisory Board",style: TextStyle(fontSize: (20/672)*ScreenHeight,color: Colors.white,fontWeight: FontWeight.bold),),
                          Text("Know more about our Advisory Board",style: TextStyle(fontSize: (15/672)*ScreenHeight,color: Colors.white),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>userAdvisoryBoard()));
              },
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Our Team :",style: TextStyle(fontSize: (25/672)*ScreenHeight,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 10,top: 5),
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Text("Prasad Bhide"),
                  subtitle: Text("Founder-CEO"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 10,top: 5),
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Text("Vikrant Thakkar"),
                subtitle: Text("CAO & Property Acquisition Head"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 10,top: 5),
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Text("Dr. Ajay Pillai"),
                subtitle: Text("Head - Geriatric Care Centre"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 10,top: 5),
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Text("Ami Damani"),
                subtitle: Text("Head - IT & Quality Management"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 10,top: 5),
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Text("Vanita Kuckain"),
                subtitle: Text("Marketing Manager"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 10,top: 5),
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Text("Priyanka Shinde"),
                subtitle: Text("Head - Programme & Skill Training"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 10,top: 5),
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Text("Sulbha Patke"),
                subtitle: Text("Head - Accounts"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 10,top: 5),
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Text("Dr. Ruchi Raichura"),
                subtitle: Text("Medical Administrator"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 10,top: 5),
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Text("Priyanka K"),
                subtitle: Text("Center Manager"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 10,top: 5),
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Text("Milan Arun"),
                subtitle: Text("Center Manager"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}