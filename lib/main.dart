import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                        Container( // TOP BAR 
                          color: Colors.white,
                          padding: EdgeInsets.only(left: 50, top: 10, bottom: 10, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "DETALHES DOS PEDIDOS",
                                style: TextStyle(fontSize: 24, fontFamily: "arial", fontWeight: FontWeight.bold),
                              ),
                              TextButton(
                                onPressed: () {}, 
                                style: TextButton.styleFrom(
                                  side: BorderSide(color: Colors.black),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                                ),
                                child: Text("ADICIONAR PEDIDO", style: TextStyle(fontWeight: FontWeight.bold),),
                              )
                            ],
                          ),
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
