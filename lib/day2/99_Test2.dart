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
  var num = 0;
  var _color = Colors.purple[200];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home : Scaffold(
            appBar: AppBar(title : Text('숫자 증가'), backgroundColor: Colors.purpleAccent,),
            body : Container(
              child: Column(
                children: [
                    Expanded(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("버튼 누르면 숫자 증가"),
                              Text(num.toString())
                            ],
                          )
                        )
                    ),
                    Align(
                        child: Container(
                          height: 100,
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                              onPressed: (){
                                setState(() {
                                  // num++;
                                  num = num + 1;
                                  // if(num % 2 == 1){
                                  //   _color = Colors.blue[200];
                                  // } else {
                                  //   _color = Colors.purple[200];
                                  // }

                                });
                              },
                              child: Text("+"),
                              style : ElevatedButton.styleFrom(
                                // backgroundColor: _color, // if
                                backgroundColor: num % 2 == 1 ? Colors.blue[200] : Colors.purple[200],
                                // shape: RoundedRectangleBorder(
                                //   borderRadius: BorderRadius.zero
                                // )
                              )
                          ),
                        )
                    )

                ],
              ),
            )
        )
    );
  }
}