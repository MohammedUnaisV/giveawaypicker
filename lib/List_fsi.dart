import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giveawaypicker/Provider/MainProvider.dart';
import 'package:provider/provider.dart';

class ListFsi extends StatelessWidget {
  const ListFsi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
          child: Text("LIST",
          style: TextStyle(color: Colors.white,
          fontSize: 16,
            fontFamily: "loging1",
          ),
          ),
        ),
      ),
      body: Consumer<MaineProvider>(
        builder: (context, addfsi, child) {

          return Column(

            children: [


              ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount:addfsi.usersList.length,
                  itemBuilder:  (context, index ){

                return
                  Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: Container(
                      height: 60,
                      width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        border: Border.all(
                        color: Colors.black
                      )
                    ),

                    child: ListTile(
                      title:
                      Text(addfsi.usersList[index].firstName+addfsi.usersList[index].secondName),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(addfsi.usersList[index].image),
                      ),
                    ),
                    ),
                  );
                  }
              )


            ],
          );
        }
      ),

    );
  }
}
