import 'package:flutter/material.dart';

class userAdvisoryBoardInfo3 extends StatelessWidget {
  const userAdvisoryBoardInfo3({super.key});

  @override
  Widget build(BuildContext context) {
    var ScreenHeight = MediaQuery.of(context).size.height;
    var ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Mittal Shah"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: (10/672)*ScreenHeight,),
            Container(
              width: (200/360)*ScreenWidth,
              height: (200/672)*ScreenHeight,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/MittalShah.jpg"),
              ),
            ),
            SizedBox(height: (10/672)*ScreenHeight,),
            Row(
              children: [
                SizedBox(width: (20/360)*ScreenWidth,),
                Text("Mittal Shah",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              children: [
                SizedBox(width: (20/360)*ScreenWidth,),
                Text("Bestseller Author",style: TextStyle(fontSize: 15,color: Colors.grey),),
              ],
            ),
            SizedBox(height: (20/672)*ScreenHeight,),
            Container(
              width: (320/360)*ScreenWidth,
              height: (280/672)*ScreenHeight,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text("Mittal is an author of the bestseller, Idea to Unicorn: 7 Habits and behaviour of successful startup founder.",
                    style:TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: (20/672)*ScreenHeight,),
                    Text("Mittal has been associated with Aaji Care since Oct 2013 as an advisor. He has worked with various campanies including Accenture, Larsen & Toubro, TCS on challenging consulting assignments with fortune 500 clients in New York, London, Paris, Abu Dhabi and Bangkok.",
                    style:TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: (20/672)*ScreenHeight,),
                    Text("Mittal holds a Bchelor in Engineering and a Masters in Internationsl Finance. He currently lives in Mumbai.",
                    style:TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}