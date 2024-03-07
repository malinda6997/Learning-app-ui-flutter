import 'package:flutter/material.dart';
import 'package:learning01/screens/loginScreen.dart';


class welcomeScreen extends StatelessWidget {
  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final Size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  "https://e-ngineers.com/wp-content/uploads/2021/07/software-engineering.png"),
              SizedBox(
                height: 18.0,
              ),
              Text(
                "Online Learning Platform",
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.w400,
                    fontSize: 22.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Careers at Loram Loram has job opportunities ranging from field work to corporate positions, from engineering and equipment maintenance to general labor",
                style: TextStyle(color: Color.fromARGB(255, 144, 144, 144)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 80.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const loginScreen(),
                      ));
                },
                child: Container(
                  width: 300,
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Center(
                      child: Text(
                    "Start Learning",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 19.0),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
