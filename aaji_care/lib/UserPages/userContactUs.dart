import 'package:aaji_care/UserPages/userInquiryForm.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class userContactUs extends StatefulWidget {
  const userContactUs({super.key});

  @override
  State<userContactUs> createState() => _userContactUsState();
}

class _userContactUsState extends State<userContactUs> {
  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,  
        title: Text("Contact Us"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(height: (10/672)*ScreenHeight,),
            Container(
              width: (300/360)*ScreenWidth,
              height: (200/672)*ScreenHeight,
              child: Lottie.asset("assets/animations/ContactUsAnimation.json"),
            ),
            SizedBox(height: (10/672)*ScreenHeight,),
            Container(
              width: (330/360)*ScreenWidth,
              height: (350/672)*ScreenHeight,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      elevation: 10,
                      child: Container(
                        width: (320/360)*ScreenWidth,
                        child: Column(
                          children: [
                            Container(
                              width: (300/360)*ScreenWidth,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on),
                                    SizedBox(width: (5/360)*ScreenWidth,),
                                    Container(
                                      width: (250/360)*ScreenWidth,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Address :",style: TextStyle(fontSize: (20/672)*ScreenHeight,fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Aaji care Home Health services Pvt Ltd. 2nd floor, Anmol Mansion, Govind Bachaji Rd, Charai, Thane West, Maharashtra 400601"),
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
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: (180/360)*ScreenWidth,
                                    child: Column(
                                      children: [
                                        Text("Help Line: +91 9920018184"),
                                      ],
                                    )
                                  ),
                                  SizedBox(width: (5/360)*ScreenWidth,),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                                    onPressed: ()async{
                                      final Uri phone=Uri(
                                        scheme: "tel",
                                        path: "+91 99200 18184"
                                      );
                                      if(await canLaunchUrl(phone)){
                                        await launchUrl(phone);
                                      }
                                    }, 
                                    child: Row(
                                      children: [
                                        Icon(Icons.call,color: Colors.white),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 2),
                                          child: Text("Call",style: TextStyle(color: Colors.white),),
                                        )
                                      ],
                                    )
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: (180/360)*ScreenWidth,
                                    child: Column(
                                      children: [
                                        Text("Email: contact@aajicare.in"),
                                      ],
                                    )
                                  ),
                                  SizedBox(width: (5/360)*ScreenWidth,),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                                    onPressed: ()async{
                                      final Uri email=Uri(
                                        scheme: "mailto",
                                        path: "contact@aajicare.in"
                                      );
                                      if(await canLaunchUrl(email)){
                                        await launchUrl(email);
                                      }
                                    }, 
                                    child: Row(
                                      children: [
                                        Icon(Icons.mail,color: Colors.black,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 2),
                                          child: Text("Mail",style: TextStyle(color: Colors.black),),
                                        )
                                      ],
                                    )
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: (10/672)*ScreenHeight,),
                    Card(
                      elevation: 10,
                      child: Container(
                        width: (320/360)*ScreenWidth,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.calendar_month),
                                  SizedBox(width: (5/360)*ScreenWidth,),
                                  Container(
                                    width: (260/360)*ScreenWidth,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Working Hours :"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: (5/672)*ScreenHeight,),
                              Row(
                                children: [
                                  Container(
                                    width: (260/360)*ScreenWidth,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Mon-Fri: 9:00 AM - 7:00 PM"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: (260/360)*ScreenWidth,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Sat-Sun: 9:00 AM - 5:30 PM"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: (30/672)*ScreenHeight,),
                    Text("Aaji Care Centers Location Details",style: TextStyle(fontSize: (25/672)*ScreenHeight,fontWeight: FontWeight.bold),),
                    CarouselSlider(
                      items: [
                        Card(
                          color: Colors.blue,
                          elevation: 10,
                          child: Container(
                            width: (250/360)*ScreenWidth,
                            height: (200/672)*ScreenHeight,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(height: (10/672)*ScreenHeight,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.location_on,color: Colors.white,),
                                      Container(
                                        width: (200/360)*ScreenWidth,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Andheri-Versova",style: TextStyle(color: Colors.white,fontSize: (18/672)*ScreenHeight),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: (10/672)*ScreenHeight,),
                                  Container(
                                    width: (200/360)*ScreenWidth,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("Ground Floor, Sea Shell Apartment, Opposite Nana Nani Park, Versova,Andheri West, Mumbai, Maharashtra 400061",style: TextStyle(color: Colors.white),)
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.blue,
                          elevation: 10,
                          child: Container(
                            width: (250/360)*ScreenWidth,
                            height: (200/672)*ScreenHeight,
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: (10/672)*ScreenHeight,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.location_on,color: Colors.white,),
                                      Container(
                                        width: (200/360)*ScreenWidth,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Andheri-Veera Desai",style: TextStyle(color: Colors.white,fontSize: (18/672)*ScreenHeight),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: (10/672)*ScreenHeight,),
                                  Container(
                                    width: (200/360)*ScreenWidth,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("First Floor, Sejal Building, Link Extension Road, Off Veera Desai Road, Andheri West, Mumbai, Maharashtra-400053",style: TextStyle(color: Colors.white),)
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.blue,
                          elevation: 10,
                          child: Container(
                            width: (250/360)*ScreenWidth,
                            height: (200/672)*ScreenHeight,
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: (10/672)*ScreenHeight,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.location_on,color: Colors.white,),
                                      Container(
                                        width: (200/360)*ScreenWidth,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Aaji Care Centers Thane",style: TextStyle(color: Colors.white,fontSize: (18/672)*ScreenHeight),)
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: (10/672)*ScreenHeight,),
                                  Container(
                                    width: (200/360)*ScreenWidth,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("Behind Bhaindarpada bus stop, Opposite LODHA Splendora,Ghodbunder Rd, Thane West, Maharashtra 400607",style: TextStyle(color: Colors.white),)
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.blue,
                          elevation: 10,
                          child: Container(
                            width: (250/360)*ScreenWidth,
                            height: (200/672)*ScreenHeight,
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: (10/672)*ScreenHeight,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.location_on,color: Colors.white,),
                                      Container(
                                        width: (200/360)*ScreenWidth,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Aaji Care Centers Pune",style: TextStyle(color: Colors.white,fontSize: (18/672)*ScreenHeight),)
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: (10/672)*ScreenHeight,),
                                  Container(
                                    width: (200/360)*ScreenWidth,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("101, Dhir Mansion, 209/11, Road No. 6, Palacimo Estate, Opp. Vascon Park, Kalyani Nagar, Pune - 411006",style: TextStyle(color: Colors.white),)
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ], 
                      options: CarouselOptions(
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true
                      )
                    ),
                    SizedBox(height: (30/672)*ScreenHeight,),
                    InkWell(
                      child: Card(
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: (280/360)*ScreenWidth,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Inquiry Form",style: TextStyle(fontSize: (20/672)*ScreenHeight,fontWeight: FontWeight.bold),),
                                SizedBox(height: (5/672)*ScreenHeight,),
                                Text("Click here to fill Inquiry Form",style: TextStyle(fontSize:(15/672)*ScreenHeight),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>userInquiryForm()));
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}