import 'package:flutter/material.dart';


class UserEdit extends StatefulWidget {
  final String? name;
  final int? age;
  UserEdit({super.key, this.name, this.age});

  @override
  State<UserEdit> createState() => _UserEditState();
}

class _UserEditState extends State<UserEdit> {
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController ageCtrl = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameCtrl.text = widget.name!;
    ageCtrl.text = widget.age!.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title : Text("사용자 수정"),
        ),
        body : Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: nameCtrl,
                decoration: InputDecoration(
                    labelText: "Name"
                ),
              ),
              TextField(
                controller: ageCtrl,
                decoration: InputDecoration(
                    labelText: "Age"
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: () {},
                  child: Text("수정")
              )
            ],
          ),
        )

    );
  }
}