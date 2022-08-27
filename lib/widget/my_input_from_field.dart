import 'package:flutter/material.dart';

class MyInputFromField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final TextEditingController textController;
  final TextInputType? keyboardType;
  const MyInputFromField({
    Key? key,
    required this.icon,
    required this.hintText,
    required this.textController,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white60,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            alignment: Alignment.center,
            color: Colors.white10,
            child: Icon(
              icon,
              color: Colors.white60,
              size: 30.0,
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: TextFormField(
                controller: textController,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  letterSpacing: 1.0,
                ),
                keyboardType: keyboardType,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: TextStyle(
                    color: Colors.white54,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
