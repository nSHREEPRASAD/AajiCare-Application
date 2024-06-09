import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class ownerAddVacancy extends StatefulWidget {
  const ownerAddVacancy({super.key});

  @override
  State<ownerAddVacancy> createState() => _ownerAddVacancyState();
}

class _ownerAddVacancyState extends State<ownerAddVacancy> {
  var time = 1;
  var time1 = 1;
  bool isSelectedAM = false;
  bool isSelectedPM = false; 
  bool isSelectedAM1 = false;
  bool isSelectedPM1 = false; 
  TextEditingController _TitleController = TextEditingController();
  TextEditingController _DescriptionController = TextEditingController();
  TextEditingController _LocationController = TextEditingController();
  TextEditingController _SalaryController = TextEditingController();
  final key_1 = GlobalKey<FormState>();
  final key_2 = GlobalKey<FormState>();
  final key_3 = GlobalKey<FormState>();
  final key_5 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final _firestore = FirebaseFirestore.instance;
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Vacancy"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Container(
          width: (330/360)*ScreenWidth,
          height: (550/672)*ScreenHeight,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                  child: Form(
                    key: key_1,
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isNotEmpty){
                          return null;
                        }
                        else{
                          return "Please Enter Job Title";
                        }
                      },
                      controller: _TitleController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.title),
                        hintText: "Job Title",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: (1/360)*ScreenWidth 
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: (1/360)*ScreenWidth
                          )
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: (1/360)*ScreenWidth
                          )
                        )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                  child: Form(
                    key: key_2,
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isNotEmpty){
                          return null;
                        }
                        else{
                          return "Please Enter Job Description";
                        }
                      },
                      controller: _DescriptionController,
                      maxLines: 3,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.description),
                        hintText: "Job Description",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: (1/360)*ScreenWidth 
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: (1/360)*ScreenWidth
                          )
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: (1/360)*ScreenWidth
                          )
                        )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                  child: Form(
                    key: key_3,
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isNotEmpty){
                          return null;
                        }
                        else{
                          return "Please Enter Job Location";
                        }
                      },
                      controller: _LocationController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.place),
                        hintText: "Job Location",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: (1/360)*ScreenWidth 
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: (1/360)*ScreenWidth
                          )
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: (1/360)*ScreenWidth
                          )
                        )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                  child: Container(
                    width: (300/360)*ScreenWidth,
                    height: (250/672)*ScreenHeight,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                          child: Row(
                            children: [
                              Icon(Icons.hourglass_bottom),
                              SizedBox(width: (10/360)*ScreenWidth,),
                              Text("Job Timings",style: TextStyle(fontSize: 18),)
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            SingleChildScrollView(
                              child: NumberPicker(
                                minValue: 1, 
                                maxValue: 12,
                                zeroPad: true, 
                                itemHeight: (30/672)*ScreenHeight,
                                infiniteLoop: true,
                                selectedTextStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),
                                textStyle: TextStyle(color: Colors.grey,fontSize: 15),
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.grey
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.grey
                                    )
                                  )
                                ),
                                value: time, 
                                onChanged: (value) {
                                  setState(() {
                                    time=value;
                                  });
                                },
                              ),
                            ),
                            SizedBox(width: (10/360)*ScreenWidth,),
                            Text("To"),
                            SizedBox(width: (10/360)*ScreenWidth,),
                            SingleChildScrollView(
                              child: NumberPicker(
                                minValue: 1, 
                                maxValue: 12,
                                zeroPad: true, 
                                itemHeight: (30/672)*ScreenHeight,
                                infiniteLoop: true,
                                selectedTextStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),
                                textStyle: TextStyle(color: Colors.grey,fontSize: 15),
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.grey
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.grey
                                    )
                                  )
                                ),
                                value: time1, 
                                onChanged: (value) {
                                  setState(() {
                                    time1=value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 10),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  ChoiceChip(
                                    label: Text("AM"), 
                                    selected: isSelectedAM,
                                    onSelected: (value) {
                                      setState(() {
                                        isSelectedAM=value;
                                        isSelectedPM=false;
                                      });
                                    },
                                  ),
                                  ChoiceChip(
                                    label: Text("PM"), 
                                    selected: isSelectedPM,
                                    onSelected: (value) {
                                      setState(() {
                                        isSelectedPM=value;
                                        isSelectedAM=false;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(width: (60/360)*ScreenWidth,),
                              Column(
                                children: [
                                  ChoiceChip(
                                    label: Text("AM"), 
                                    selected: isSelectedAM1,
                                    onSelected: (value) {
                                      setState(() {
                                        isSelectedAM1=value;
                                        isSelectedPM1=false;
                                      });
                                    },
                                  ),
                                  ChoiceChip(
                                    label: Text("PM"), 
                                    selected: isSelectedPM1,
                                    onSelected: (value) {
                                      setState(() {
                                        isSelectedPM1=value;
                                        isSelectedAM1=false;
                                      });
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
                  child: Form(
                    key: key_5,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if(value!.isNotEmpty){
                          return null;
                        }
                        else{
                          return "Please Enter Approximate Salary";
                        }
                      },
                      controller: _SalaryController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.currency_rupee_sharp),
                        hintText: "Approximate Salary",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: (1/360)*ScreenWidth 
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: (1/360)*ScreenWidth
                          )
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: (1/360)*ScreenWidth
                          )
                        )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.amber,
                        width: (300/360)*ScreenWidth,
                        child: ElevatedButton(
                          onPressed: (){
                            if (!key_1.currentState!.validate() || !key_2.currentState!.validate() || !key_3.currentState!.validate() || !key_5.currentState!.validate()) {
                              return;
                            }
                            else{
                              _firestore.collection("Vacancy").doc()
                              .set({
                                "Title":_TitleController.text.toString(),
                                "Description":_DescriptionController.text.toString(),
                                "Location":_LocationController.text.toString(),
                                "Timings":"${time} ${isSelectedAM?"AM":"PM"} To ${time1} ${isSelectedAM1?"AM":"PM"}",
                                "Salary":_SalaryController.text.toString()
                              })
                              .then((value){
                                _TitleController.clear();
                                _DescriptionController.clear();
                                _LocationController.clear();
                                _SalaryController.clear();
                                setState(() {
                                  time=1;
                                  time1=1;
                                  isSelectedAM=false;
                                  isSelectedPM=false;
                                  isSelectedAM1=false;
                                  isSelectedPM1=false;
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Vacancy Added Successfully"),
                                    backgroundColor: Colors.green,
                                    duration: Duration(seconds: 3),
                                  )
                                );
                              });
                            }
                          }, 
                          child: Row(
                            children: [
                              Icon(Icons.add),
                              Text("Add"),
                            ],
                          )
                        ),
                      ),
                    ],
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