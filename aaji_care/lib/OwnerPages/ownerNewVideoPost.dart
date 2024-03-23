import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class ownerNewVideoPost extends StatefulWidget {
  const ownerNewVideoPost({super.key});

  @override
  State<ownerNewVideoPost> createState() => _ownerNewVideoPostState();
}

class _ownerNewVideoPostState extends State<ownerNewVideoPost> {
  
  bool isPressed = false;
  List<String>Likes=[];
  List<String>Comments=[];
  final _firestore= FirebaseFirestore.instance;
  TextEditingController _CaptionController = TextEditingController();
  VideoPlayerController? _controller;
  File? video;
  String filePath = "";
  String videoUrl = "";
  @override
  void dispose() {
    // TODO: implement dispose
    _controller?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,  
        title: Text("Post a Video"),
      ),
      body: Container(
        width: (360/360)*ScreenWidth,
        height: (600/672)*ScreenHeight,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: (20/672)*ScreenHeight,),
              InkWell(
                child: Stack(
                  children:[ 
                    Card(
                      elevation: 10,
                      child: Container(
                        width: (300/360)*ScreenWidth,
                        height: (300/672)*ScreenHeight,
                        child: video==null? Icon(Icons.video_camera_back,size: 200,color: Colors.blueGrey,):VideoPlayer(_controller!)
                      ),
                    ),
                    Positioned(
                      child: IconButton(
                        onPressed: (){
                          setState(() {
                            video=null;
                            filePath="";
                          });
                        }, 
                        icon: Icon(Icons.cancel,size: 40,),
                      ),
                      top: 10,
                      right: 10,
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
                            SizedBox(width: (60/360)*ScreenWidth,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed:() async{
                                    Navigator.pop(context);
                                    setState(() {
                                      video=null;
                                      filePath="";
                                    });
                                    ImagePicker videopicker = ImagePicker();
                                    XFile? file = await videopicker.pickVideo(source: ImageSource.camera);
        
                                    if(file!=null){
                                      setState(() {
                                        filePath = file.path;
                                        video = File(filePath);
                                      });
                                      _initializevideoplayer();
                                    }
                                  }, 
                                  icon: Icon(Icons.add_a_photo,size: 40,),
                                ),
                                Text("Camera",style: TextStyle(fontSize: 15),)
                              ],
                            ),
                            SizedBox(width: (120/360)*ScreenWidth,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () async{
                                    Navigator.pop(context);
                                    setState(() {
                                      video=null;
                                      filePath="";
                                    });
        
                                    ImagePicker videopicker = ImagePicker();
                                    XFile? file = await videopicker.pickVideo(source: ImageSource.gallery);
        
                                    if(file!=null){
                                      setState(() {
                                        filePath = file.path;
                                      });
                                      _initializevideoplayer();
                                    }
                                  }, 
                                  icon: Icon(Icons.image,size: 40,),
                                ),
                                Text("Gallery",style: TextStyle(fontSize: 15),)
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
                    controller: _CaptionController,
                    decoration: InputDecoration(
                      hintText: "Write a Caption...",
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey
                        )
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(height: (50/672)*ScreenHeight,),
              Row(
                children: [
                  SizedBox(width: (20/360)*ScreenWidth,),
                  ElevatedButton(
                    onPressed: ()async {
                      if(video==null){
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Please add a Video", style: TextStyle(color: Colors.black),),
                            backgroundColor: Colors.amber,
                            duration: Duration(seconds: 3),
                          )
                        );
                      }
                      else{
                        String fileName = DateTime.now().millisecondsSinceEpoch.toString();
                        Reference refDir = FirebaseStorage.instance.ref();
                        Reference refRoot = refDir.child("Videos");
                        Reference refVid = refRoot.child(fileName);

                        try{
                          setState(() {
                            isPressed=true;
                          });
                          Future.delayed(Duration(seconds: 10),(){
                            setState(() {
                              isPressed=false;
                            });
                          });

                          await refVid.putFile(File(filePath));
                          videoUrl = await refVid.getDownloadURL();

                          String docId = DateTime.now().millisecondsSinceEpoch.toString();
                          _firestore.collection("Post").doc(docId)
                          .set({
                            "FileType":"video",
                            "VidUrl":videoUrl.toString(),
                            "Caption":_CaptionController.text.toString(),
                            "Likes":Likes,
                            "Comments":Comments,
                            "Id": docId.toString()
                          }).then((value){
                            _CaptionController.clear();
                            setState(() {
                              video = null;
                              filePath="";
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Video Posted Successfully"),
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
                    Center(child: CircularProgressIndicator(),):
                    Container(
                      width: 90,
                      height: 50,
                      child: Row(
                        children: [
                          Text("Post",style: TextStyle(fontSize: 25),),
                          SizedBox(width: (10/360)*ScreenWidth,),
                          Icon(Icons.send)
                        ],
                      ),
                    )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  void _initializevideoplayer (){
    _controller = VideoPlayerController.file(File(filePath))
    ..initialize().then((_){
      setState(() {});
      _controller!.play();
    });
  }
}