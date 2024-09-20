import 'package:flutter/material.dart';
import 'package:giveawaypicker/Api.dart';
import 'package:giveawaypicker/List_fsi.dart';
import 'package:giveawaypicker/Provider/MainProvider.dart';
import 'package:provider/provider.dart';

import 'Home_Page.dart';
import 'loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => MaineProvider(),)
    ],
    child: MaterialApp(
    debugShowCheckedModeBanner: false,





      // home:api()
      home:ListFsi()
    )
        );
  }
}




