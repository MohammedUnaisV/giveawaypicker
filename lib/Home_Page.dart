

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SecondPage.dart';
import 'constants/constant_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController pickerController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pickerController.dispose();
    super.dispose();
  }

  void submitLink() {
    if (formKey.currentState!.validate()) {
      Navigator.pushNamed(
        context,
        '/settings', // Make sure '/settings' is defined in your routes
        arguments: {'videoLink': pickerController.text.trim()},
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 280),
            child: Text(
              "Enter The Instagram Video Link",
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55, bottom: 5),
            child: Container(
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black),
              ),
              child: Form(
                key: formKey,
                child: TextFormField(
                  controller: pickerController,
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
                    hintText: "https://www.instagram.com/p/2ef3...",
                    hintStyle: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the video LINK';
                    }
                    final urlPattern = r'(https?:\/\/(?:www\.)?instagram\.com\/reel\/[A-Za-z0-9-_]+\/?(\?.*)?)';
                    if (!RegExp(urlPattern).hasMatch(value)) {
                      return 'Please enter a valid Instagram post LINK';
                    }
                    return null;
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55,bottom: 2),
            child: Container(
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.deepPurple,
              ),
              child: TextButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Secondpage(),
                      ),
                    );
                  }
                },
                child: Text(
                  "FIND POST",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

