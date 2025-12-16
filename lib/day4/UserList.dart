import 'package:flutter/material.dart';
import 'UserEdit.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<Map<String, dynamic>> list = [
    {"userId" : "hong", "name" : "홍길동", "age" : 30},
    {"userId" : "kim", "name" : "김철수", "age" : 25},
    {"userId" : "park", "name" : "박영희", "age" : 20}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title : Text("사용자 목록")),
        body : ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            var user = list[index];
            return ListTile(
              title : Text("아이디 : ${user["userId"]}, 이름 : ${user["name"]}"),
              subtitle: Text("나이 : ${user["age"]}"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () async {
                         Navigator.push(context,
                            MaterialPageRoute(builder: (context) => UserEdit(name: user["name"], age: user["age"]),));
                      },
                      icon: Icon(Icons.edit)
                  ),
                  IconButton(
                      onPressed: (){
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title : Text("삭제"),
                              content: Text("${user["NAME"]}님을 정말 삭제 하실거?"),
                              actions: [
                                TextButton(
                                    onPressed: (){},
                                    child: Text("삭제")
                                ),
                                TextButton(
                                    onPressed: (){
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("취소")
                                )
                              ],
                            );
                          },
                        );
                      },
                      icon: Icon(Icons.delete)
                  )
                ],
              ),
            );
          },
        )
    );
  }
}