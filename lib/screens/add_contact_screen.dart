import 'package:flutter/material.dart';

import '../widget/my_input_from_field.dart';

class AddContactScreen extends StatelessWidget {
  AddContactScreen({Key? key}) : super(key: key);

  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black54,
          elevation: 0.0,
          flexibleSpace: Container(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Spacer(),
                Text(
                  "Create contact",
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
                Spacer(),
                GestureDetector(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 22.0, vertical: 10),
                    decoration: BoxDecoration(
                        color: Color(0xFF81D4FA),
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Text(
                      "Save",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.only(top: 20.0, left: 12.0, right: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xFF01579B),
                      radius: 46.0,
                      child: Icon(
                        Icons.add_a_photo_outlined,
                        size: 30.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Add Photo",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    )
                  ],
                ),
              ),
              MyInputFromField(
                textController: _nameController,
                icon: Icons.person_outline_outlined,
                hintText: "Enter Name",
                keyboardType: TextInputType.name,
              ),
              MyInputFromField(
                textController: _phoneController,
                icon: Icons.phone,
                hintText: "Phone",
                keyboardType: TextInputType.phone,
              ),
              MyInputFromField(
                textController: _emailController,
                icon: Icons.email_outlined,
                hintText: "Phone",
                keyboardType: TextInputType.emailAddress,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
