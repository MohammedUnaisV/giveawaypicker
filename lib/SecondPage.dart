// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Secondpage extends StatefulWidget {
//   const Secondpage({super.key});
//
//   @override
//   State<Secondpage> createState() => _SecondpageState();
// }
//
// class _SecondpageState extends State<Secondpage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           SizedBox(height: 200),
//           Center(
//             child: Text("Set Winner Count",
//               style: TextStyle(
//                   color: Colors.deepPurple,
//                   fontWeight: FontWeight.bold,
//                 fontSize: 16
//               ),
//             ),
//           ),
//
//           Text("Giveaway Winner Count",
//           style: TextStyle(color: Colors.deepPurple,
//
//           ),
//           ),
//                        Container(
//            height: 50,
//            width: 250,
//            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(5),
//              border: Border.all(color: Colors.black)
//            ),
//
//            child: Row(
//              children: [
//                IconButton(onPressed: () {
//
//                },
//                    icon:Icon(Icons.remove)
//                ),
//
//
//              ],
//            ),
//
//
//
//                        ),
//
//         ],
//       ),
//
//     );
//   }
// }



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loading.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  int _winnerCount = 0; // Initialize the counter

  void _incrementCount() {
    setState(() {
      _winnerCount++;
    });
  }

  void _decrementCount() {
    setState(() {
      if (_winnerCount > 1) { // Prevent count from going below zero
        _winnerCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 200),
          const Center(
            child: Text(
              "Set Winner Count",
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          const Text(
            "Giveaway Winner Count",
            style: TextStyle(
              color: Colors.deepPurple,
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 40,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.deepPurple),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: _decrementCount,
                  icon: const Icon(Icons.remove,color: Colors.deepPurple,),
                ),
                Text(
                  '$_winnerCount', // Display the current count
                  style: const TextStyle(fontSize: 20,
                  color: Colors.deepPurple,
                  ),
                ),
                IconButton(
                  onPressed: _incrementCount,
                  icon: const Icon(Icons.add,color: Colors.deepPurple,),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),

          Container(
            width: 110,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              // border: Border.all(color: Colors.deepPurple)
              color: Colors.deepPurple
            ),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => loading(),));
                },
                child: Text("SUBMIT",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
            ),
          )

        ],
      ),
    );
  }
}
