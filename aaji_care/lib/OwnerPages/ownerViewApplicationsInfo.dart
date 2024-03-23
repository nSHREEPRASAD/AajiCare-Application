import 'package:aaji_care/OwnerPages/ownerViewResume.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ownerViewApplicationsInfo extends StatefulWidget {
  var Email;
  var Name;
  var Phone;
  var PdfName;
  var PdfUrl;

  ownerViewApplicationsInfo(
    this.Email,
    this.Name,
    this.Phone,
    this.PdfName,
    this.PdfUrl
  );

  @override
  State<ownerViewApplicationsInfo> createState() => _ownerViewApplicationsInfoState(Email,Name,Phone,PdfName,PdfUrl);
}

class _ownerViewApplicationsInfoState extends State<ownerViewApplicationsInfo> {
  var Email;
  var Name;
  var Phone;
  var PdfName;
  var PdfUrl;

  _ownerViewApplicationsInfoState(
    this.Email,
    this.Name,
    this.Phone,
    this.PdfName,
    this.PdfUrl
  );

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Application Info"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            width: (360/360)*ScreenWidth,
            height: (672/672)*ScreenHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Text("${Name}",style: TextStyle(fontSize: 18),),
                SizedBox(height: (20/672)*ScreenHeight,),
                Text("Email : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: (200/360)*ScreenWidth,
                      child: Text("${Email}",style: TextStyle(fontSize: 16),),
                    ),
                    SizedBox(width: (30/360)*ScreenWidth,),
                    IconButton(
                      onPressed: ()async{
                        final Uri url = Uri(
                          scheme: "mailto",
                          path: Email.toString()
                        );
                        if(await canLaunchUrl(url)){
                          await launchUrl(url);
                        }
                        else{
                          print("Can't Launch");
                        }
                      }, 
                      icon: Icon(Icons.mail,color: Colors.red,)
                    )
                  ],
                ),
                SizedBox(height: (10/672)*ScreenHeight,),
                Text("Phone : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                    Container(
                      width: (200/360)*ScreenWidth,
                      child: Text("${Phone}",style: TextStyle(fontSize: 16),),
                    ),
                    SizedBox(width: (30/360)*ScreenWidth,),
                    IconButton(
                      onPressed: ()async{
                        final Uri url = Uri(
                          scheme: "tel",
                          path: Phone.toString()
                        );
                        if(await canLaunchUrl(url)){
                          await launchUrl(url);
                        }
                        else{
                          print("Can't Launch");
                        }
                      }, 
                      icon: Icon(Icons.phone,color: Colors.green,)
                    )
                  ],
                ),
                SizedBox(height: (10/672)*ScreenHeight,),
                Text("Resume : ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: (10/672)*ScreenHeight,),
                InkWell(
                  child: Card(
                    elevation: 20,
                    child: Container(
                      width: (300/360)*ScreenWidth,
                      height: (200/672)*ScreenHeight,
                      child: Stack(
                        children: [
                          SizedBox(height: (5/672)*ScreenHeight,),
                          Positioned(
                            top: 10,
                            left: 70,
                            child: Icon(Icons.picture_as_pdf,size: 150,)
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text("${PdfName}")
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ownerViewResume(Name, PdfUrl)));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}