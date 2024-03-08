import 'package:flutter/material.dart';

class customeButton extends StatelessWidget {
  const customeButton({super.key, required this.text, required this.optap});
  final VoidCallback optap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: optap,
      child: Container(
        width: 300,
        height: 45.0,
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 19.0),
        )),
      ),
    );
  }
}
