import 'dart:io';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:googleauth/pages/login.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  //adding controllers
  var datelist = <DropdownMenuItem>[];
  var monthlist = [];
  final _namecontroller = TextEditingController();
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _confirmpasswordcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  final _datecontroller = TextEditingController();
  final _monthcontroller = TextEditingController();
  final _yearcontroller = TextEditingController();

  //selected variables
  var _selectedyear;
  var yearlist = <DropdownMenuItem>[];
  void submitted() {
    if (_namecontroller.text.isEmpty ||
        _emailcontroller.text.isEmpty ||
        _passwordcontroller.text.isEmpty ||
        _confirmpasswordcontroller.text.isEmpty ||
        _datecontroller.text.isEmpty ||
        _monthcontroller.text.isEmpty ||
        _yearcontroller.text.isEmpty) {
      _showDialog();
      return;
    }
  }

  void init() {
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day);

    yearlist = List<DropdownMenuItem>.generate(
      20,
      (int index) => DropdownMenuItem(
        value: index + 1994,
        child: Text(
          (index + 1994).toString(),
          style: const TextStyle(
            color: Color.fromARGB(
              93,
              255,
              255,
              255,
            ),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      growable: true,
    );
    for (var i in yearlist) print(i.child);

    _selectedyear = yearlist[0].value;
  }

  @override
  void dispose() {
    _namecontroller.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    _confirmpasswordcontroller.dispose();
    _datecontroller.dispose();
    _monthcontroller.dispose();
    _yearcontroller.dispose();
    super.dispose();
  }

  void _showDialog() {
    if (Platform.isIOS) {
      //print("platform it ios");
      showCupertinoDialog(
        context: context,
        builder: (ctx) => CupertinoAlertDialog(
          title: const Text('Invalid Input'),
          content:
              const Text('Please enter valid Title, Amount, Date & Category!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Okay'),
            )
          ],
        ),
      );
    } else {
      //print("platform it android");
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Invalid Input'),
          content:
              const Text('Please enter valid Title, Amount, Date & Category!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Okay'),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    init();
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Container(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                margin:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                child: Row(
                  children: [
                    RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 255, 255, 255),
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
                          margin: const EdgeInsets.all(5),
                          child: const Text(
                            "We can start",
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
                            "something",
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
                            "new",
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
                  top: MediaQuery.of(context).size.height * 0.022,
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
                      TextFormField(
                        autocorrect: false,
                        obscureText: false,
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(color: Colors.white),
                        cursorColor: const Color.fromARGB(255, 197, 197, 197),
                        decoration: const InputDecoration(
                          label: Text(
                            "Email",
                            style: TextStyle(
                              color: Color.fromARGB(93, 255, 255, 255),
                            ),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                      TextFormField(
                        autocorrect: false,
                        obscureText: true,
                        style: const TextStyle(color: Colors.white),
                        cursorColor: const Color.fromARGB(255, 197, 197, 197),
                        decoration: const InputDecoration(
                          label: Text(
                            "Password",
                            style: TextStyle(
                                color: Color.fromARGB(93, 255, 255, 255)),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.018,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Birth",
                            style: TextStyle(
                              color: Color.fromARGB(93, 255, 255, 255),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Flexible(
                                  child: TextFormField(
                                    initialValue: "01",
                                    validator: (value) => value!.isEmpty
                                        ? "Please enter a valid date"
                                        : null,
                                    //  controller: _datecontroller,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      fillColor: Colors.white,
                                      focusColor: Colors.white,
                                    ),
                                    style: const TextStyle(
                                      color: Color.fromARGB(93, 255, 255, 255),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    cursorColor:
                                        const Color.fromARGB(93, 255, 255, 255),
                                    onChanged: (value) {
                                      setState(() {
                                        _datecontroller.text = value;
                                      });
                                    },
                                  ),
                                ),
                                Flexible(
                                  child: TextFormField(
                                    initialValue: "03",
                                    validator: (value) => value!.isEmpty
                                        ? "Please enter a valid month"
                                        : null,
                                    //  controller: _datecontroller,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      fillColor: Colors.white,
                                      focusColor: Colors.white,
                                    ),
                                    style: const TextStyle(
                                      color: Color.fromARGB(93, 255, 255, 255),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    cursorColor:
                                        const Color.fromARGB(93, 255, 255, 255),
                                    onChanged: (value) {
                                      setState(() {
                                        _datecontroller.text = value;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          DropdownButton(
                            autofocus: true,
                            underline: const SizedBox(),
                            icon: const Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Color.fromARGB(93, 255, 255, 255),
                            ),
                            value: _selectedyear,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                            dropdownColor:
                                const Color.fromARGB(255, 21, 50, 59),
                            items: yearlist,
                            onChanged: (value) {
                              if (value == null) {
                                return;
                              }
                              setState(() {
                                _selectedyear = value.value;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.15),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        // margin: const EdgeInsets.only(top: 0),
                        padding: const EdgeInsets.only(
                          top: 5,
                          left: 20,
                          right: 20,
                          bottom: 5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: const Icon(
                          Icons.arrow_forward_sharp,
                          color: Color.fromARGB(255, 60, 119, 121),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.08),
                child: Row(
                  children: [
                    Text(
                      "wanna use ",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          color: Color.fromARGB(175, 205, 205, 205),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Google?",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 64, 62, 62),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  // top: MediaQuery.of(context).size.width * 0.08,
                  left: MediaQuery.of(context).size.width * 0.08,
                ),
                child: Row(
                  children: [
                    Text(
                      "Have we met before?",
                      style: GoogleFonts.poppins(
                        color: const Color.fromARGB(96, 255, 255, 255),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign in",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(204, 255, 255, 255),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
