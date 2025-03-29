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
                              ElevatedButton(
                                onPressed: () {}, 
                                child: Text("ADICIONAR PEDIDO")
                              )
                            ],
                          ),
                        )
                      ),
                      Expanded(
                        flex: 1, 
                        child: Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              TextButton(onPressed: () {}, child: Text("TODOS")),
                              TextButton(onPressed: () {}, child: Text("COMPLETOS")),
                              TextButton(onPressed: () {}, child: Text("PENDENTES")),
                              TextButton(onPressed: () {}, child: Text("CANCELADOS")),
                            ],
                          ),
                        )
                      ),
                      Expanded(
                        flex: 1, 
                        child: Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                                padding: EdgeInsets.all(8),
                                width: 950,
                                height: 300,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Buscar",
                                    prefixIcon: Icon(Icons.search),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black)
                                    )
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {}, 
                                child: Icon(Icons.filter_list)
                              ),
                              ElevatedButton(
                                onPressed: () {}, 
                                child: Icon(Icons.sim_card_download_rounded)
                              ),
                            ],
                          ),
                        )
                      ),
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
