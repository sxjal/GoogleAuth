import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 21, 50, 59),
              Color.fromARGB(255, 60, 119, 121),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                children: [
                  const RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 56,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        child: const Text(
                          "A world of",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color.fromARGB(255, 227, 223, 223),
                            fontSize: 36,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        child: const Text(
                          "possibility in",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color.fromARGB(255, 227, 223, 223),
                            fontSize: 36,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        child: const Text(
                          "an app",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color.fromARGB(255, 227, 223, 223),
                            fontSize: 36,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.001,
            ),
            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.2,
                right: MediaQuery.of(context).size.width * 0.2,
                top: MediaQuery.of(context).size.height * 0.05,
              ),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      autocorrect: false,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: const Color.fromARGB(255, 197, 197, 197),
                      decoration: const InputDecoration(
                        label: Text(
                          "Name",
                          style: TextStyle(
                              color: Color.fromARGB(93, 255, 255, 255)),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    TextFormField(
                      autocorrect: false,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: const Color.fromARGB(255, 197, 197, 197),
                      decoration: const InputDecoration(
                        label: Text(
                          "Name",
                          style: TextStyle(
                              color: Color.fromARGB(93, 255, 255, 255)),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 202, 202, 202),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(top: 0),
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 20,
                  right: 10,
                  bottom: 5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "ok",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 60, 119, 121),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_sharp,
                      color: Color.fromARGB(255, 60, 119, 121),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
