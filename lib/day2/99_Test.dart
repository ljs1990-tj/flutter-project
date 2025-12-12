import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home : Scaffold(
            appBar: AppBar(title : Text('숫자 증가'), backgroundColor: Colors.purpleAccent,),
            body : Container(
              child: Column(
                children: [
                  Flexible(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("버튼 누르면 숫자 증가"),
                            Text('0')
                          ],
                        ),
                      ),
                      flex: 9),
                  Flexible(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        child: ElevatedButton(
                            onPressed: ()=>{

                            },
                            child: Icon(Icons.add),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[200]
                          )
                        ),
                      ),
                    ),
                    flex: 1,)
                ],
              ),
            )
        )
    );
  }
}