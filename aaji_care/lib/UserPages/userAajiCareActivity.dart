import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class userAajiCareActivity extends StatefulWidget {
  const userAajiCareActivity({super.key});

  @override
  State<userAajiCareActivity> createState() => _userAajiCareActivityState();
}

class _userAajiCareActivityState extends State<userAajiCareActivity> {
  Map<String,dynamic>userMap={};
  final _firestore = FirebaseFirestore.instance;
  TextEditingController _CommentController = TextEditingController();
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    _firestore.collection("Users").
    doc(_auth.currentUser!.uid.toString()).
    get().then((value){
      if(mounted){
        setState(() {
          userMap=value.data()!;
        });
      }
    });

    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,  
        title: Text("Aaji Care Activity"),
      ),
      body: StreamBuilder(
        stream: _firestore.collection("Post").snapshots(),
        builder: (context,AsyncSnapshot<QuerySnapshot>snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context,index){
                return Card(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          width: (350/360)*ScreenWidth,
                          height: (250/672)*ScreenHeight,
                          child: Image.network(snapshot.data!.docs[index]["ImgUrl"],width: (300/360)*ScreenWidth,height: (250/672)*ScreenHeight,fit: BoxFit.fill,),
                        ),
                        SizedBox(height: (5/672)*ScreenHeight,),
                        Container(
                          width: (300/360)*ScreenWidth,
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(snapshot.data!.docs[index]["Caption"]),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(width: (50/360)*ScreenWidth,),
                            IconButton(
                              onPressed: ()async{
                                List<String>Likes = List.from(snapshot.data!.docs[index]["Likes"]);
                                if(Likes.contains(_auth.currentUser!.uid.toString())){
                                  Likes.remove(_auth.currentUser!.uid.toString());
                                }
                                else{
                                  Likes.add(_auth.currentUser!.uid.toString());
                                }
                                FirebaseFirestore.instance.collection("Post").
                                doc(snapshot.data!.docs[index]["Id"]).
                                update({
                                  "Likes":Likes
                                });
                              }, 
                              icon: Icon(Icons.favorite,size: 30,
                                    color: snapshot.data!.docs[index]["Likes"].contains(_auth.currentUser!.uid.toString())?
                                            Colors.red:Colors.grey,
                              )
                            ),
                            Text("${snapshot.data!.docs[index]["Likes"].length}"),
                            SizedBox(width: (100/360)*ScreenWidth,),
                            IconButton(
                              onPressed: (){
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context, 
                                  builder: (context){
                                    return Padding(
                                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                      child: Container(
                                        height: (400/672)*ScreenHeight,
                                        child: ListView(
                                          children: [
                                            SizedBox(height: (30/672)*ScreenHeight,),
                                            Container(
                                              width: (300/360)*ScreenWidth,
                                              height: (300/672)*ScreenHeight,
                                              child: StreamBuilder(
                                                stream: _firestore.collection("Comments").doc(snapshot.data!.docs[index]["Id"]).collection("CommentToThisPost").snapshots(),
                                                builder: (context,AsyncSnapshot<QuerySnapshot>snapshot1){
                                                  if (!snapshot1.hasData || snapshot1.data!.docs.isEmpty) {
                                                    return Center(child: Text("No Comments"));
                                                  } else {
                                                    return ListView.builder(
                                                      itemCount: snapshot1.data!.docs.length,
                                                      itemBuilder: (context, index) {
                                                        return Card(
                                                          child: Container(
                                                            child: Padding(
                                                              padding: const EdgeInsets.all(8.0),
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Text(snapshot1.data!.docs[index]["UserName"],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                                                  Text(snapshot1.data!.docs[index]["Comment"])
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  }
                                                }
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Form(
                                                key: _key,
                                                child: TextFormField(
                                                  validator: (value) {
                                                    if(value!.isNotEmpty){
                                                      return null;
                                                    }
                                                    else{
                                                      return "Please Enter Comment";
                                                    }
                                                  },
                                                  controller: _CommentController,
                                                  decoration: InputDecoration(
                                                    hintText: "Write a Comment",
                                                    suffixIcon: IconButton(
                                                      onPressed: (){
                                                        if(!_key.currentState!.validate()){
                                                          return;
                                                        }
                                                        else{
                                                          _firestore.collection("Comments").doc(snapshot.data!.docs[index]["Id"]).
                                                          collection("CommentToThisPost").doc().set({
                                                            "UserName":userMap["Name"],
                                                            "Comment":_CommentController.text.toString()
                                                          }).then((value){
                                                            List<String>Comments = List.from(snapshot.data!.docs[index]["Comments"]);
                                                            Comments.add(DateTime.now().millisecondsSinceEpoch.toString());
                                                            FirebaseFirestore.instance.collection("Post").
                                                            doc(snapshot.data!.docs[index]["Id"]).
                                                            update({
                                                              "Comments":Comments
                                                            });
                                                            _CommentController.clear();
                                                          });
                                                        }
                                                      }, 
                                                      icon: Icon(Icons.send)
                                                    ),
                                                    enabledBorder: UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Colors.grey
                                                      )
                                                    ),
                                                    focusedBorder: UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Colors.black
                                                      )
                                                    ),
                                                    focusedErrorBorder: UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Colors.red
                                                      )
                                                    ),
                                                  ),
                                                )
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  }
                                );
                              }, 
                              icon: Icon(Icons.comment_sharp,size: 30,)
                            ),
                            Text("${snapshot.data!.docs[index]["Comments"].length}")
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }
            );
          }
          else{
            return Center(
              child: Container(
                height: (20/672)*ScreenHeight,
                width: (20/360)*ScreenWidth,
                child: CircularProgressIndicator()),
            );
          }
        }
      ),
    );
  }
}