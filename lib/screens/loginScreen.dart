import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        // title: Text("Login Screen"),
        leading: Icon(Icons.arrow_back_ios_new_rounded),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Learning App",
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 27.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Enter your login details to access your account",
                style: TextStyle(color: Colors.grey, fontSize: 15.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 18.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  socialButton(
                    size: size,
                    icon: FontAwesomeIcons.facebook,
                    text: "Facebook",
                    color: Colors.blue,
                  ),
                  socialButton(
                    size: size,
                    icon: FontAwesomeIcons.google,
                    text: "google",
                    color: Color.fromARGB(255, 211, 4, 4),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class socialButton extends StatelessWidget {
  const socialButton(
      {super.key,
      required this.size,
      required this.icon,
      required this.text,
      this.color = Colors.green});

  final Size size;
  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.4,
      height: 50,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(14.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(
            width: 12.0,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
