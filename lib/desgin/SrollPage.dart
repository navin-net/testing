import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SrollPage extends StatelessWidget {
  const SrollPage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),

            //   Container(
            //     height: 500,
            //     child: SingleChildScrollView(
            //       scrollDirection: Axis.vertical,
            //       child: Column(
            //         children: [
            //           Container(
            //             margin: EdgeInsets.all(10),
            //             width: 400,
            //             height: 100,
            //             decoration: BoxDecoration(
            //               color: Colors.deepPurple[300],
            //               borderRadius: BorderRadius.circular(10),
            //             ),
            //           ),
            //              Container(
            //             margin: EdgeInsets.all(10),
            //             width: 400,
            //             height: 100,
            //             decoration: BoxDecoration(
            //               color: Colors.deepPurple[300],
            //               borderRadius: BorderRadius.circular(10),
            //             ),
            //           ),
            //           Container(
            //             margin: EdgeInsets.all(10),
            //             width: 400,
            //             height: 100,
            //             decoration: BoxDecoration(
            //               color: Colors.deepPurple[300],
            //               borderRadius: BorderRadius.circular(10),
            //             ),
            //           ),
            //           Container(
            //             margin: EdgeInsets.all(10),
            //             width: 400,
            //             height: 100,
            //             decoration: BoxDecoration(
            //               color: Colors.deepPurple[300],
            //               borderRadius: BorderRadius.circular(10),
            //             ),
            //           ),
            //           Container(
            //             margin: EdgeInsets.all(10),
            //             width: 400,
            //             height: 100,
            //       decoration: BoxDecoration(
            //               color: Colors.deepPurple[300],
            //               borderRadius: BorderRadius.circular(10),
            //             ),
            //           ),
            //           Container(
            //             margin: EdgeInsets.all(10),
            //             width: 400,
            //             height: 100,
            //             decoration: BoxDecoration(
            //               color: Colors.deepPurple[300],
            //               borderRadius: BorderRadius.circular(10),
            //             ),
            //           ),
            //           Container(
            //             margin: EdgeInsets.all(10),
            //             width: 400,
            //             height: 100,
            //             decoration: BoxDecoration(
            //               color: Colors.deepPurple[300],
            //               borderRadius: BorderRadius.circular(10),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   )
            ],
          ),
        ),
      ),
    );
  }
}