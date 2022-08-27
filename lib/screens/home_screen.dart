import 'package:flutter/material.dart';

import 'add_contact_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,
        floatingActionButton: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AddContactScreen(),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(0xFF1565C0),
              borderRadius: BorderRadius.circular(14.0),
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 36,
            ),
          ),
        ),
        body: Container(
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 0.5, color: Colors.white54),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.group_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "177 Contacts",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 16, left: 12, right: 12),
                // child: ,
              )
            ],
          ),
        ),
      ),
    );
  }
}
