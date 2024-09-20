import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giveawaypicker/List_fsi.dart';
import 'package:giveawaypicker/Provider/MainProvider.dart';
import 'package:provider/provider.dart';

class api extends StatefulWidget {
  const api({super.key});

  @override
  State<api> createState() => _apiState();
}

class _apiState extends State<api> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<MaineProvider>(
        builder: (context,log,child) {
          return Column(children: [
            Padding(
              padding: const EdgeInsets.only(left:100,top: 200),
              child: Container(
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black),
                ),
                child: TextFormField(
                  controller: log.userController,
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      hintText: "UserName",
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 100,top: 10),
              child: Container(
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black),
                ),
                child: TextFormField(
                  controller: log.passwordController,
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            ),

          Padding(
            padding: const EdgeInsets.only(left:90,top: 20),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                    color: Colors.pink
              ),
              child: TextButton(onPressed: () {

                log.loginApi(context);
                log.getEmployees();
                },
                  child: Text("LOG IN",
                  style: TextStyle(
                    color: Colors.black
                  ),
                  )
              ),
            ),
          )


          ]
          );
        }
      ),
    );
  }
}
