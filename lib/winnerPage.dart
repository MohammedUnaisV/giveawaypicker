import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giveawaypicker/Home_Page.dart';

import 'constants/constant_colors.dart';

class winnerPage extends StatefulWidget {
  const winnerPage({super.key});

  @override
  State<winnerPage> createState() => _winnerPageState();
}

class _winnerPageState extends State<winnerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,

      body:
        Column(
          children: [



          Container(
          height: 738,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
              gradient: cstorange

          ),
            child:
            Column(
              children: [
                SizedBox(height: 50,),

                Text("Giveaway Completed",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      fontFamily: "loging1"
                  ),
                ),

               SizedBox(height: 20,),
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.transparent, // Optional: to remove any background color
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/unais img.JPG",
                      fit: BoxFit.cover, // Ensures the image covers the entire circle without distortion
                      width: 150,  // Adjust width as needed
                      height: 150, // Adjust height as needed
                    ),
                  ),
                ),
                
                Text("@unais_v69",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 16,

                  ),
                ),

                SizedBox(height: 50,),
                Column(
                  children: [
                    Container(
                      height: 450,
                      width: 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: cstorange
                      ),
                      child:Column(
                        children: [
                          SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 10,),
                              Image.asset("assets/images/trophyimg.png",scale: 15,),
                              Text("Winners" ,style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                              ),
                              )
                            ],
                          ),


                          SizedBox(height:30),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Container(
                                height: 110,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    gradient:cstorange1

                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 20,),
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.transparent, // Optional: to remove any background color
                                      child: ClipOval(
                                        child: Image.asset(
                                          "assets/images/unais img.JPG",
                                          fit: BoxFit.cover, // Ensures the image covers the entire circle without distortion
                                          width: 50,  // Adjust width as needed
                                          height: 50, // Adjust height as needed
                                        ),
                                      ),

                                    ),

                                    Text("unais_v69",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,

                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),

                         SizedBox(height: 200,),
                          Container(
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white
                            ),
                            child: TextButton(
                              onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                              },
                              child: Text(
                                "FINISH",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),


                        ],
                      )
                    ),
                  ],
                ),
              ],
            ),
          )

          ],
        )
    );



  }
}