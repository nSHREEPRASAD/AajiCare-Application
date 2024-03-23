import 'package:aaji_care/UserPages/userAdvisoryBoard.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: (300/360)*ScreenWidth,
                height: (200/672)*ScreenHeight,
                child: Stack(
                  children: [
                    Image.network("https://www.startupurban.com/wp-content/uploads/2018/08/aaji-care.jpg"),
                    Positioned(
                      bottom: 50,
                      left: 50,
                      child: Column(
                        children: [
                          Text("An Elder Care Service,",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: Colors.white,fontStyle: FontStyle.italic),),
                          Text("you can Trust !",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color: Colors.white,fontStyle: FontStyle.italic),),
                          SizedBox(height: (10/672)*ScreenHeight,),
                        ],
                      )
                    ),
                  ],
                )
              ),
              Card(
                elevation: 5,
                child: Container(
                  width: (300/360)*ScreenWidth,
                  height: (180/672)*ScreenHeight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: (15/672)*ScreenHeight,),
                      Row(
                        children: [
                          SizedBox(width: (5/360)*ScreenWidth,),
                          Container(
                            width: (260/360)*ScreenWidth,
                            height: (28/672)*ScreenHeight,
                            color: Colors.blue,
                            child: Text(" Who we are, What we do",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),)
                          ),
                        ],
                      ),
                      SizedBox(height: (5/672)*ScreenHeight,),
                      Row(
                        children: [
                          Icon(Icons.star,color: Colors.amber,size: 30,),
                          SizedBox(width: (2/360)*ScreenWidth,),
                          Text("OUR MISSION",style: TextStyle(fontSize: 30,color: Colors.blue,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: (30/360)*ScreenWidth,),
                          Container(
                            width: (250/360)*ScreenWidth,
                            height: (60/672)*ScreenHeight,
                            child: Text("TO EMPOWER SENIORS & CAREGIVERS TO LEAD HAPPY & DIGNIFIED LIFE",style: TextStyle(fontSize: 15,color: Colors.blue,fontWeight: FontWeight.bold),),
                          )
                        ],
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
                  height: (160/672)*ScreenHeight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: (15/672)*ScreenHeight,),
                      Row(
                        children: [
                          SizedBox(width: (5/360)*ScreenWidth,),
                          Container(
                            width: (220/360)*ScreenWidth,
                            height: (28/672)*ScreenHeight,
                            color: Colors.blue,
                            child: Text(" Who we aspire to be",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),)
                          ),
                        ],
                      ),
                      SizedBox(height: (5/672)*ScreenHeight,),
                      Row(
                        children: [
                          Icon(Icons.remove_red_eye,color: Colors.black,size: 30,),
                          SizedBox(width: (2/360)*ScreenWidth,),
                          Text("VISION",style: TextStyle(fontSize: 30,color: Colors.blue,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: (30/360)*ScreenWidth,),
                          Container(
                            width: (250/360)*ScreenWidth,
                            height: (60/672)*ScreenHeight,
                            child: Text("TO BE A LEADER IN GERIATRIC CARE",style: TextStyle(fontSize: 15,color: Colors.blue,fontWeight: FontWeight.bold),),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: (20/672)*ScreenHeight,),
              Text("Aaji Care 5C Approach",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text("To Deliver Geriatric Care",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: (5/672)*ScreenHeight,),
              CarouselSlider(
                items: [
                  Card(
                    elevation: 5,
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: (210/360)*ScreenWidth,
                        height: (210/672)*ScreenHeight,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("#1",style: TextStyle(fontSize: 25,color: Colors.white),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("Compassion",style: TextStyle(fontSize: 25,color: Colors.white),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("Compassion is at the heart of Care we deliver across all of our Facilities or at Home.",style: TextStyle(color: Colors.white),)
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
                        height: (210/672)*ScreenHeight,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("#2",style: TextStyle(fontSize: 25,color: Colors.blue),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("Clarity",style: TextStyle(fontSize: 25,color: Colors.blue),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("Our mission is guiding force to give clarity for everything we do in our organization.",style: TextStyle(color: Colors.blue),)
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
                        height: (210/672)*ScreenHeight,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("#3",style: TextStyle(fontSize: 25,color: Colors.white),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("Competence",style: TextStyle(fontSize: 25,color: Colors.white),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("We focus on building competence in the team to deliver right care and it is a continuous process at Aaji Care.",style: TextStyle(color: Colors.white),)
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
                        height: (210/672)*ScreenHeight,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("#4",style: TextStyle(fontSize: 25,color: Colors.blue),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("Consistency",style: TextStyle(fontSize: 25,color: Colors.blue),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("We have been delivering consistent and uninterrupted service any break-even during peak of Covid waves.",style: TextStyle(color: Colors.blue),)
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
                        height: (210/672)*ScreenHeight,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("#5",style: TextStyle(fontSize: 25,color: Colors.white),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("Commitment",style: TextStyle(fontSize: 25,color: Colors.white),),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Text("Entire Aaji Care team is committed to treat elders with dignity, love & care",style: TextStyle(color: Colors.white),)
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
              SizedBox(height: (10/672)*ScreenHeight,),
              Container(
                width: (300/360)*ScreenWidth,
                height: (610/672)*ScreenHeight,
                child: Column(
                  children: [
                    Text(
                      "Hello Everyone ! This is Elder Care Service home named as “Aaji Care”. Aaji Care Home Health Services Private Limited was invented on 15 Aug 2012.",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: (30/672)*ScreenHeight,),
                    Text(
                      "Aaji Care is Mumbai's Most Trusted Elder Care Service provider and delivering care with smiles from 2012. We are on a mission “To empower seniors and caregivers to lead a happy and dignified life”. We are here to deliver long-term, innovative and meaningful solutions to geriatric care challenges faced by individuals and families in metro cities across India.",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: (30/672)*ScreenHeight,),
                    Text(
                      "Our Specialities are at Elder Care, Geriatric Care, Dementia Care, Patient Care at Home, Senior Care at Home, Geriatric Care Clinic, Care Givers, and Palliative Care.",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              SizedBox(height: (10/672)*ScreenHeight,),
              InkWell(
                child: Card(
                  elevation: 10,
                  color: Colors.blue,
                  child: Container(
                    width: (300/360)*ScreenWidth,
                    height: (70/672)*ScreenHeight,
                    child: Column(
                      children: [
                        SizedBox(height: (5/672)*ScreenHeight,),
                        Text("Advisory Board",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text("Know more about our Advisory Board",style: TextStyle(fontSize: 15,color: Colors.white),)
                      ],
                    ),
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>userAdvisoryBoard()));
                },
              ),
              SizedBox(height: (20/672)*ScreenHeight,),
              Row(
                children: [
                  SizedBox(width: (30/360)*ScreenWidth,),
                  Text("Our Team :-",style: TextStyle(fontSize: 25),),
                ],
              ),
              Card(
                child: Container(
                  width: (300/360)*ScreenWidth,
                  height: (100/672)*ScreenHeight,
                  child: Row(
                    children: [
                      Container(
                        width: (100/360)*ScreenWidth,
                        height: (80/672)*ScreenHeight,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/PrasadBhide.jpg"),
                        ),
                      ),
                      SizedBox(width: (10/360)*ScreenWidth,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: (10/672)*ScreenHeight,),
                          Text("Prasad Bhide",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Text("Founder-CEO",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: (300/360)*ScreenWidth,
                  height: (100/672)*ScreenHeight,
                  child: Row(
                    children: [
                      Container(
                        width: (100/360)*ScreenWidth,
                        height: (80/672)*ScreenHeight,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/VikrantThakkar.jpeg"),
                        ),
                      ),
                      SizedBox(width: (10/360)*ScreenWidth,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: (10/672)*ScreenHeight,),
                          Text("Vikrant Thakkar",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Container(
                            width: (180/360)*ScreenWidth,
                            height: (50/672)*ScreenHeight,
                            child: Column(
                              children: [
                                Text("CAO & Property Acquisition Head",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: (300/360)*ScreenWidth,
                  height: (100/672)*ScreenHeight,
                  child: Row(
                    children: [
                      Container(
                        width: (100/360)*ScreenWidth,
                        height: (80/672)*ScreenHeight,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/AjayPillai.jpeg"),
                        ),
                      ),
                      SizedBox(width: (10/360)*ScreenWidth,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: (10/672)*ScreenHeight,),
                          Text("Dr. Ajay Pillai",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Container(
                            width: (180/360)*ScreenWidth,
                            height: (50/672)*ScreenHeight,
                            child: Column(
                              children: [
                                Text("Head - Geriatric Care Centre",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: (300/360)*ScreenWidth,
                  height: (100/672)*ScreenHeight,
                  child: Row(
                    children: [
                      Container(
                        width: (100/360)*ScreenWidth,
                        height: (80/672)*ScreenHeight,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/NainaOke.png"),
                        ),
                      ),
                      SizedBox(width: (10/360)*ScreenWidth,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: (10/672)*ScreenHeight,),
                          Text("Naina Oke",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Container(
                            width: (180/360)*ScreenWidth,
                            height: (50/672)*ScreenHeight,
                            child: Column(
                              children: [
                                Text("Head - Geriatric Counselling",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: (300/360)*ScreenWidth,
                  height: (100/672)*ScreenHeight,
                  child: Row(
                    children: [
                      Container(
                        width: (100/360)*ScreenWidth,
                        height: (80/672)*ScreenHeight,
                        child: CircleAvatar(
                          child: Icon(Icons.person,size: 70,),
                        ),
                      ),
                      SizedBox(width: (10/360)*ScreenWidth,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: (10/672)*ScreenHeight,),
                          Text("Ami Damani",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Container(
                            width: (180/360)*ScreenWidth,
                            height: (50/672)*ScreenHeight,
                            child: Column(
                              children: [
                                Text("Head - IT & Quality Management",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: (300/360)*ScreenWidth,
                  height: (100/672)*ScreenHeight,
                  child: Row(
                    children: [
                      Container(
                        width: (100/360)*ScreenWidth,
                        height: (80/672)*ScreenHeight,
                        child: CircleAvatar(
                          child: Icon(Icons.person,size: 70,),
                        ),
                      ),
                      SizedBox(width: (10/360)*ScreenWidth,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: (10/672)*ScreenHeight,),
                          Text("Vanita Kuckain",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Container(
                            width: (180/360)*ScreenWidth,
                            height: (50/672)*ScreenHeight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Marketing Manager",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: (300/360)*ScreenWidth,
                  height: (100/672)*ScreenHeight,
                  child: Row(
                    children: [
                      Container(
                        width: (100/360)*ScreenWidth,
                        height: (80/672)*ScreenHeight,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/PriyankaShinde.png"),
                        ),
                      ),
                      SizedBox(width: (10/360)*ScreenWidth,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: (10/672)*ScreenHeight,),
                          Text("Priyanka Shinde",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Container(
                            width: (180/360)*ScreenWidth,
                            height: (50/672)*ScreenHeight,
                            child: Column(
                              children: [
                                Text("Head - Programme & Skill Training",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: (300/360)*ScreenWidth,
                  height: (100/672)*ScreenHeight,
                  child: Row(
                    children: [
                      Container(
                        width: (100/360)*ScreenWidth,
                        height: (80/672)*ScreenHeight,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/SulbhaPatke.png"),
                        ),
                      ),
                      SizedBox(width: (10/360)*ScreenWidth,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: (10/672)*ScreenHeight,),
                          Text("Sulbha Patke",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Container(
                            width: (180/360)*ScreenWidth,
                            height: (50/672)*ScreenHeight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Head - Accounts",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: (300/360)*ScreenWidth,
                  height: (100/672)*ScreenHeight,
                  child: Row(
                    children: [
                      Container(
                        width: (100/360)*ScreenWidth,
                        height: (80/672)*ScreenHeight,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/RuchiraRaichura.png"),
                        ),
                      ),
                      SizedBox(width: (10/360)*ScreenWidth,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: (10/672)*ScreenHeight,),
                          Text("Dr. Ruchi Raichura",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Container(
                            width: (180/360)*ScreenWidth,
                            height: (50/672)*ScreenHeight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Medical Administrator",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: (300/360)*ScreenWidth,
                  height: (100/672)*ScreenHeight,
                  child: Row(
                    children: [
                      Container(
                        width: (100/360)*ScreenWidth,
                        height: (80/672)*ScreenHeight,
                        child: CircleAvatar(
                          child: Icon(Icons.person,size: 70,),
                        ),
                      ),
                      SizedBox(width: (10/360)*ScreenWidth,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: (10/672)*ScreenHeight,),
                          Text("Priyanka K",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Container(
                            width: (180/360)*ScreenWidth,
                            height: (50/672)*ScreenHeight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Center Manager",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: (300/360)*ScreenWidth,
                  height: (100/672)*ScreenHeight,
                  child: Row(
                    children: [
                      Container(
                        width: (100/360)*ScreenWidth,
                        height: (80/672)*ScreenHeight,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/MilanArun.png"),
                        ),
                      ),
                      SizedBox(width: (10/360)*ScreenWidth,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: (10/672)*ScreenHeight,),
                          Text("Milan Arun",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                          Container(
                            width: (180/360)*ScreenWidth,
                            height: (50/672)*ScreenHeight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Center Manager",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}