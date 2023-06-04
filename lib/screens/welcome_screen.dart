import 'package:flutter/material.dart';
import 'package:flutter_doctor_appointment_ui/screens/colors.dart';
import 'package:flutter_doctor_appointment_ui/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              pColor.withOpacity(0.8),
              pColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset("assets/doctors.png"),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Doctors Online",
              style: TextStyle(
                color: wColor,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 2,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Appoint Your Doctor",
              style: TextStyle(
                  color: wColor, fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 60),
            Material(
              color: wColor,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: const Text(
                    "Let's Go",
                    style: TextStyle(
                      color: pColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            // Image.asset(
            //   "assets/lined heart.png",
            //   color: wColor,
            //   scale: 2,
            // )
          ],
        ),
      ),
    );
  }
}
