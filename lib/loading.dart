import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giveawaypicker/winnerPage.dart';

import 'constants/constant_colors.dart';

class loading extends StatefulWidget {
  const loading({super.key});

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 5),() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => winnerPage(),));
    },);
  }


  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      // backgroundColor: Colors.white,


      body:SingleChildScrollView(
        child:
        Column(
          children: [

            Container(
              height: 800,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                gradient: cstorange

              ),
              child:
              Padding(
                padding: const EdgeInsets.only(left:40,top: 300),
                child: Text("   Loading Your Post\n         Comments....",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    fontFamily:"loging"
                  ),
                ),
              ),


            ),




          ],
        ),
      ),



    );
  }
}
