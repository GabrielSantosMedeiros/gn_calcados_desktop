import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.green,
                    width: 250,
                    height: MediaQuery.of(context).size.height,
                  )
                ],

              ),
              Expanded(
                child: Container(
                  color: Colors.black,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1, 
                        child: 
                        Container(
                          color: Colors.white
                        )
                      ),
                      Expanded(flex: 1, child: Container(color: Colors.blue)),
                      Expanded(flex: 1, child: Container(color: Colors.red)),
                      Expanded(flex: 6, child: Container(color: Colors.blue)),

                    ],
                  ),
                ))
            ],
          ),
        )
      )
    );
  }
}
