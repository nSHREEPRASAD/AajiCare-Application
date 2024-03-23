import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class ownerResponseCorner extends StatefulWidget {
  const ownerResponseCorner({super.key});

  @override
  State<ownerResponseCorner> createState() => _ownerResponseCornerState();
}

class _ownerResponseCornerState extends State<ownerResponseCorner> {
  Color buttColor=Colors.grey;
  final _key = GlobalKey<FormState>();
  TextEditingController _ResponseController = TextEditingController();
  // final FirebaseDatabase _rdb= FirebaseDatabase.instance;
  final _firestoreDb=FirebaseFirestore.instance.collection("Response");
  List<String>likes=[];
  Map<String,dynamic>userMap={};
  Map<String,dynamic>userLikeMap={};
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    final _auth= FirebaseAuth.instance;

    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Response Corner"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: (5/672)*ScreenHeight,),
              Container(
                width: (340/360)*ScreenWidth,
                height: (580/672)*ScreenHeight,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: StreamBuilder(
                  stream: _firestoreDb.snapshots(),
                  builder: (context,AsyncSnapshot<QuerySnapshot>snapshot){
                    if(snapshot.hasData){
                      return ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10, top: 1, bottom: 1),
                            child: Card(
                              elevation: 5,
                              child: Container(
                                width: (300/360)*ScreenWidth,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: (60/360)*ScreenWidth,
                                      child: Column(
                                        children: [
                                          SizedBox(height: (10/672)*ScreenHeight,),
                                          Container(
                                            width: (60/360)*ScreenWidth,
                                            height: (60/672)*ScreenHeight,
                                            child: CircleAvatar(child: Icon(Icons.person,size: 50,)),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: (5/360)*ScreenWidth,),
                                    Column(
                                      children: [
                                        SizedBox(height: (10/672)*ScreenHeight,),
                                        Container(
                                          width: (240/360)*ScreenWidth,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: (10/672)*ScreenHeight,),
                                              Text(snapshot.data!.docs[index]["Email"]),
                                              SizedBox(height: (10/672)*ScreenHeight,),
                                              Text(snapshot.data!.docs[index]["Response"]),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: (220/360)*ScreenWidth,
                                          height: (50/672)*ScreenHeight,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                width: (80/360)*ScreenWidth,
                                                height: (50/672)*ScreenHeight,
                                                child: Row(
                                                  children: [
                                                    IconButton(
                                                      onPressed: ()async{ 
                                                        await FirebaseFirestore.
                                                        instance.collection("Response").
                                                        get().then((value){
                                                          setState(() {
                                                            userMap=value.docs[index].data();
                                                          });
                                                        });
                                                        List<String>Likes=List.from(userMap["Likes"]??[]);
                                                        if(Likes.contains(_auth.currentUser!.uid.toString())){
                                                          Likes.remove(_auth.currentUser!.uid.toString());
                                                        }
                                                        else if(!Likes.contains(_auth.currentUser!.uid.toString())){
                                                          Likes.add(_auth.currentUser!.uid.toString());
                                                        }
                                                        await FirebaseFirestore.
                                                        instance.collection("Response").doc(snapshot.data!.docs[index]["ID"]).
                                                        update({
                                                          "Likes":Likes
                                                        });
                                                      }, 
                                                      icon: Icon(Icons.favorite,
                                                      color:snapshot.data!.docs[index]["Likes"].
                                                            contains(_auth.currentUser!.uid.toString())?Colors.red:Colors.grey
                                                      )),
                                                      Text(snapshot.data!.docs[index]["Likes"].length.toString())
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }
                      );
                    }
                    else{
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }
                ),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}