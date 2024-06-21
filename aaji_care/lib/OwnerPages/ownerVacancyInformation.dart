import 'package:aaji_care/OwnerPages/ownerViewApplications.dart';
import 'package:flutter/material.dart';

class ownerVacancyInformation extends StatefulWidget {
  var Title;
  var Description;
  var Location;
  var Timings;
  var Salary;
  var id;
  ownerVacancyInformation(
    this.Title,
    this.Description,
    this.Location,
    this.Timings,
    this.Salary,
    this.id
  );

  @override
  State<ownerVacancyInformation> createState() => _ownerVacancyInformationState(Title,Description,Location,Timings,Salary,id);
}

class _ownerVacancyInformationState extends State<ownerVacancyInformation> {
  var Title;
  var Description;
  var Location;
  var Timings;
  var Salary;
  var id;
  _ownerVacancyInformationState(
    this.Title,
    this.Description,
    this.Location,
    this.Timings,
    this.Salary,
    this.id,
  );
  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Vacancy Details"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ownerViewApplications(id)));
            }, 
            child: Text("Applications")
          )
        ],
      ),
      body: Center(
        child: Container(
          width: (340/360)*ScreenWidth,
          height: (560/672)*ScreenHeight,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: (1/360)*ScreenWidth
            ),
            borderRadius: BorderRadius.circular(15)
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17,right: 17,top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Job Title :",style: TextStyle(fontSize: (20/672)*ScreenHeight,fontWeight: FontWeight.bold,color: Colors.black),),
                        Text("${Title}",style: TextStyle(fontSize: (18/672)*ScreenHeight,color: Colors.blueGrey),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17,right: 17,top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Job Description :",style: TextStyle(fontSize: (20/672)*ScreenHeight,fontWeight: FontWeight.bold,color: Colors.black),),
                        Text("${Description}",style: TextStyle(fontSize: (18/672)*ScreenHeight,color: Colors.blueGrey),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17,right: 17,top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Job Location :",style: TextStyle(fontSize: (20/672)*ScreenHeight,fontWeight: FontWeight.bold,color: Colors.black),),
                        Text("${Location}",style: TextStyle(fontSize: (18/672)*ScreenHeight,color: Colors.blueGrey),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17,right: 17,top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Job Timings :",style: TextStyle(fontSize: (20/672)*ScreenHeight,fontWeight: FontWeight.bold,color: Colors.black),),
                        Text("${Timings}",style: TextStyle(fontSize: (18/672)*ScreenHeight,color: Colors.blueGrey),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17,right: 17,top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Job Salary :",style: TextStyle(fontSize: (20/672)*ScreenHeight,fontWeight: FontWeight.bold,color: Colors.black),),
                        Text("Rs ${Salary}",style: TextStyle(fontSize: (18/672)*ScreenHeight,color: Colors.blueGrey),)
                      ],
                    ),
                  ),
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}