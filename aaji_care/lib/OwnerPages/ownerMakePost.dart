import 'package:aaji_care/OwnerPages/ownerNewImagePost.dart';
import 'package:aaji_care/OwnerPages/ownerNewVideoPost.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ownerMakePost extends StatefulWidget {
  const ownerMakePost({super.key});

  @override
  State<ownerMakePost> createState() => _ownerMakePostState();
}

class _ownerMakePostState extends State<ownerMakePost> {
  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,  
        title: Text("Make a Post"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: (20/672)*ScreenHeight,),
              InkWell(
                child: Container(
                  width: (300/360)*ScreenWidth,
                  height: (250/672)*ScreenHeight,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black
                    )
                  ),
                  child: Stack(
                    children: [
                      Lottie.asset("assets/animations/PostImage.json"),
                      Positioned(
                        bottom: 10,
                        right: 20 ,
                        child: Icon(Icons.add_a_photo,size: 40,)
                      )
                    ],
                  )
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ownerNewImagePost()));
                },
              ),
              SizedBox(height: (50/672)*ScreenHeight,),
              InkWell(
                child: Container(
                  width: (300/360)*ScreenWidth,
                  height: (250/672)*ScreenHeight,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black
                    )
                  ),
                  child: Stack(
                    children: [
                      Lottie.asset("assets/animations/PostVideo.json"),
                      Positioned(
                        bottom: 10,
                        right: 20 ,
                        child: Icon(Icons.videocam,size: 40,)
                      )
                    ],
                  )
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ownerNewVideoPost()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}