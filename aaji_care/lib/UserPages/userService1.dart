import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class userServices1 extends StatelessWidget {
  const userServices1({super.key});

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Geriatric Care Centre"),
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
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Container(
                  width: (320/360)*ScreenWidth,
                  height: (200/672)*ScreenHeight,
                  child: Image.network("https://aajicare.in/wp-content/uploads/elementor/thumbs/aarambh--scaled-pl66is8ulctk9fkyzcavwdrczzz613mdjuu9xffcfs.jpg"),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                    child: Text("What Challenges Do We Address ?",style: TextStyle(fontSize: (25/672)*ScreenHeight,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("The assisted living facility is a residence for the elderly who require help with routines of daily living and access to medical care.",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight),
                    ),
                    SizedBox(height: (10/672)*ScreenHeight,),
                    Text("*Dementia Care",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight,color: Colors.red,fontWeight: FontWeight.bold),
                    ),
                    Text("*Chronic & advanced heart disease",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight,color: Colors.red,fontWeight: FontWeight.bold),
                    ),
                    Text("*Alzheimer Care",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight,color: Colors.red,fontWeight: FontWeight.bold),
                    ),
                    Text("*Stroke",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight,color: Colors.red,fontWeight: FontWeight.bold),
                    ),
                    Text("*Parkinson Disease",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight,color: Colors.red,fontWeight: FontWeight.bold),
                    ),
                    Text("*Post-Operative Care",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight,color: Colors.red,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: (10/672)*ScreenHeight,),
                    Text("We are addressing challenges for families staying away from their parents or finding it difficult to manage them at home due to a lack of professional help and infrastructure to help elders deal with their medical conditions.",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight),
                    ),
                    SizedBox(height: (10/672)*ScreenHeight,),
                    Text("We provide holistic Geriatric & Palliative Care with a team of Elder Care Specialist Dr, Physiotherapist, Psychologist, Nurses, and trained Caregivers. This team focuses on improving the quality of elders’ lives in maximal comfort and helping family members address their anxiety & care burnouts.",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Text("Aur bhai Kya bolta sab thik lavde ka baalAur bhai Kya bolta sab thik lavde ka baalAur bhai Kya bolta sab thik lavde ka baalWhat We Offer",style: TextStyle(fontSize: (25/672)*ScreenHeight,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,left: 15,right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Our Assisted living facilities (Elder Care Homes) offer long-term and short-term care for Geriatric, Palliative, and Post-Operative Care.",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight),
                    ),
                    SizedBox(height: (10/672)*ScreenHeight,),
                    Text("We assist with their daily activities like bathing, dressing, grooming, toileting, medicine management, and around-the-clock nursing care. We also focus on their physical strength through yoga, physiotherapy sessions, and psychological wellbeing through activities and counseling sessions, along with a range of social movements and outings.",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight),
                    ),
                    SizedBox(height: (10/672)*ScreenHeight,),
                    Text("We aim to have a less institutional, more communal feel than nursing homes in our facilities.",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight),
                    ),
                    SizedBox(height: (10/672)*ScreenHeight,),
                    Text("Our centers also provide a specialized form of long-term care for seniors with Alzheimer’s disease and other forms of dementia. When seniors start experiencing Alzheimer’s or dementia symptoms, families realize that it’s in their loved one’s interest to seek out specialized assisted living facilities. Due to the signs accompanying memory loss, living at home without professional help can become unhealthy and unsafe for seniors. Our facilities are staffed by trained professionals to provide care to Alzheimer’s and dementia patients and are designed to accommodate older adults with progressive cognitive disorders.",
                    style: TextStyle(fontSize: (16/672)*ScreenHeight),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8,left: 15,right: 15),
                child: Container(
                  width: (300/360)*ScreenWidth,
                  height: (200/672)*ScreenHeight,
                  child: Lottie.asset("assets/animations/ElderCare.json"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Text("Aur bhai Kya bolta sab thik lavde ka baalAur bhai Kya bolta sab thik lavde ka baalAur bhai Kya bolta sab thik lavde ka baalKey Highlights",style: TextStyle(fontSize: (25/672)*ScreenHeight,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("*ELDER FRIENDLY INFRASTRUCTURE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*24/7 NURSING CARE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*SAFE & HOMELY ENVIRONMENT",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*HEALTHY & CUSTOMISED MEALS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*REGULAR DOCTOR VISITS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*PHYSIOTHERAPY SESSIONS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*ENGAGING SOCIAL ACTIVITIES",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*COUNSELING SUPPORT",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Text("Facilities we offer",style: TextStyle(fontSize: (25/672)*ScreenHeight,fontWeight: FontWeight.bold),),
              ),
              SizedBox(width: (15/360)*ScreenWidth,),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("*AIR-CONDITIONED SUPERIOR ROOMS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*COMMUNITY AREA FOR VARIOUS ACTIVITIES",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*GARDEN AREA",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*IN-HOUSE KITCHEN",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*CCTV MONITORING",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*ELECTRONIC SAFETY DOORS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*TIE-UP WITH HOSPITALS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                    Text("*ELDER FRIENDLY INFRASTRUCTURE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),)
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