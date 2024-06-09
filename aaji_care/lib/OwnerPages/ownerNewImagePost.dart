import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ownerNewImagePost extends StatefulWidget {
  @override
  State<ownerNewImagePost> createState() => _ownerNewImagePostState();
}

class _ownerNewImagePostState extends State<ownerNewImagePost> {
  bool isPressed = false;
  TextEditingController _CaptionController =TextEditingController();
  File? Photo;
  String filePath="";
  String imgUrl="";
  List<String>Likes=[];
  List<String>Comments=[];
  final _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,  
        title: Text("Post an Image"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: (20/672)*ScreenHeight,),
              InkWell(
                child: Stack(
                  children: [
                    Card(
                    elevation: 10,
                    child: Container(
                      width: (300/360)*ScreenWidth,
                      height: (300/672)*ScreenHeight,
                      child: Photo==null? Icon(Icons.image,size: (200/672)*ScreenHeight,color: Colors.blueGrey,):Image.file(Photo!,width: (300/360)*ScreenWidth,height: (300/672)*ScreenHeight,fit: BoxFit.cover,)
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: 
                    filePath!=""?
                    IconButton(
                      onPressed: (){
                        setState(() {
                          Photo=null;
                          filePath="";
                        });
                      }, 
                      icon: Icon(Icons.cancel,size: (40/672)*ScreenHeight)
                    ):Text(""),
                  )
                ]
                ),
                onTap: (){
                  showModalBottomSheet(
                    context: context, 
                    builder: (context){
                      return Container(
                        height: (100/672)*ScreenHeight,
                        child: Row(
                          children: [
                            SizedBox(width: (50/360)*ScreenWidth,),
                            Column(
                              children: [
                                IconButton(
                                  onPressed: ()async{
                                    Navigator.pop(context);
                                    setState(() {
                                      Photo=null;
                                      filePath="";
                                    });
                                    ImagePicker _imagePicker = ImagePicker();
                                    XFile? file = await _imagePicker.pickImage(source: ImageSource.camera);
                                    if(file!=null){
                                      setState(() {
                                        Photo=File(file.path);
                                        filePath=file.path;
                                      });
                                    }
                                  }, 
                                  icon: Icon(Icons.add_a_photo,size: (50/672)*ScreenHeight,)
                                ),
                                Text("Camera")
                              ],
                            ),
                            SizedBox(width: (120/360)*ScreenWidth,),
                            Column(
                              children: [
                                IconButton(
                                  onPressed: ()async{
                                    Navigator.pop(context);
                                    setState(() {
                                      Photo=null;
                                      filePath="";
                                    });
                                    ImagePicker _imagePicker = ImagePicker();
                                    XFile? file = await _imagePicker.pickImage(source: ImageSource.gallery);
                                    if(file!=null){
                                      setState(() {
                                        Photo=File(file.path);
                                        filePath=file.path;
                                      });
                                    }
                                  }, 
                                  icon: Icon(Icons.image,size: (50/672)*ScreenHeight,)
                                ),
                                Text("Gallery")
                              ],
                            ),
                          ],
                        ),
                      );
                    }
                  );
                },
              ),
              SizedBox(height: (40/672)*ScreenHeight,),
              Container(
                width: (300/360)*ScreenWidth,
                child: Form(
                  child: TextFormField(
                    maxLines: 2,
                    controller: _CaptionController,
                    decoration: InputDecoration(
                      hintText: "Write a Caption...",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey
                        )
                      ),
                    ),
                  )
                ),
              )
              ,
              SizedBox(height: (50/672)*ScreenHeight,),
              Row(
                children: [
                  SizedBox(width: (20/360)*ScreenWidth,),
                  ElevatedButton(
                    onPressed: () async{
                      if(Photo==null){
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Please add an Image",style: TextStyle(color: Colors.black),),
                            backgroundColor: Colors.amber,
                            duration: Duration(seconds: 3),
                          )
                        );
                      }
                      else{
                        String filName=DateTime.now().millisecondsSinceEpoch.toString();
                        Reference refDir = FirebaseStorage.instance.ref();
                        Reference refRoot = refDir.child("Images");
                        Reference refImg = refRoot.child(filName);
                        setState(() {
                          isPressed=true;
                        });
                        Future.delayed(Duration(seconds: 11 ),(){
                          setState(() {
                            isPressed=false;
                          });
                        });
                        try{
                          await refImg.putFile(File(filePath));
                          imgUrl=await refImg.getDownloadURL();
                          String docId=DateTime.now().millisecondsSinceEpoch.toString();
                          _firestore.collection("Post").doc(docId).
                          set({
                            "FileType":"Image",
                            "ImgUrl":imgUrl.toString(),
                            "Caption":_CaptionController.text.toString(),
                            "Likes":Likes,
                            "Comments":Comments,
                            "Id": docId.toString()
                          }).then((value){
                            _CaptionController.clear();
                            setState(() {
                              Photo=null;
                              filePath="";
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Image Posted Successfully"),
                                backgroundColor: Colors.green,
                                duration: Duration(seconds: 2),
                              )
                            );
                          });
                        }
                        catch(e){
                          //error
                        }
                      }
                    }, 
                    child: 
                    isPressed?
                    Container(
                      width:(90/360)*ScreenWidth,
                      height:(30/360)*ScreenHeight,
                      child:Center(child: CircularProgressIndicator(),)
                    )
                    :
                    Container(
                      width:(90/360)*ScreenWidth,
                      height:(30/360)*ScreenHeight,
                      child: Row(
                        children: [
                          Text("Post",style: TextStyle(fontSize: (25/672)*ScreenHeight),),
                          SizedBox(width: (10/360)*ScreenWidth,),
                          Icon(Icons.send)
                        ],
                      ),
                    )
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