import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giveawaypicker/Home_Page.dart';
import 'package:giveawaypicker/List_fsi.dart';
import 'package:giveawaypicker/Model/Model_Class.dart';
import 'package:http/http.dart'as http;



class MaineProvider extends ChangeNotifier {



  // ............................API login.....................................<


  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void loginApi(BuildContext context) async {
    final String apiUrl = "https://reqres.in/api/login";

    final Map<String, String> credentials = {
      "email": userController.text,
      "password": passwordController.text,
    };

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode(credentials),
      );

      print(response.statusCode.toString() + ' Response Code');

      if (response.statusCode == 200) {
        print(response.body.toString()+' KJFRKFN ');
        final Map<String, dynamic> responseBody = jsonDecode(response.body);

        if (responseBody.containsKey('token')) {
          print('Login successful');
          print('Token: ${responseBody['token']}');

          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.green,
              content: Center(
                child: Text(
                  "Login successfully ",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white),
                ),
              )
          )
          );

          // Navigate to Employee screen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ListFsi(),
            ),
          );
        } else {
          print('Login failed: Missing token');
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              'Login failed',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ));
        }
      } else {
        print('Server error: ${response.statusCode}');
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            'Server error: ${response.statusCode}',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ));
      }
    } catch (e) {
      print('Request error: $e');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.red,
        content: Text(
          "Request error",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
      ));
    }
  }

  // .................................End..........................................>


  // ............................ Get fsi.......................................<

  List<Get_fsi> usersList=[];
  getEmployees() async {
    final response = await http.get(
      Uri.parse("https://reqres.in/api/users?page=;"),
    );
    print("DEWDWED" + response.statusCode.toString());
    if (response.statusCode == 200) {
      print("helooi" + response.body.toString());
      final List<dynamic> data = json.decode(response.body)['data'];
      for (var employee in data) {
        print("First Name: " + employee['first_name']);
        usersList.add(Get_fsi(employee['first_name'], employee['last_name'], employee['avatar']));
        print(usersList.length.toString()+'');
        notifyListeners();
    }

    }
    }
  //   .........................................End.......................................................>


  }



