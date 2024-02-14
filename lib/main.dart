import 'package:flutter/material.dart';
import 'package:mostafa/Welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // ignore: unused_field
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            alignment: const Alignment(0, 0),
            margin: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                const FlutterLogo(
                  size: 150,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          cursorColor: Colors.indigoAccent[600],
                          decoration: InputDecoration(
                            labelText: "User_name",
                            labelStyle: TextStyle(
                                color: Colors.blueAccent[400], fontSize: 20),
                          ),
                          validator: (value) {
                            if (value!.length > 8 && value.length < 10) {
                              return null;
                            } else {
                              return "Not user";
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelText: "password",
                            labelStyle: TextStyle(
                                color: Colors.blueAccent[400], fontSize: 20),
                          ),
                          validator: (value) {
                            if (value!.length == 15) {
                              return null;
                            } else {
                              return "Invalid pass !";
                            }
                          },
                          cursorColor: Colors.indigoAccent[600],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            // ignore: avoid_print
                            print(' Congrate Loged In ! ');
                          }
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WelcomePage()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          width: 200,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
                            ),
                            border: Border.all(color: Colors.white70),
                          ),
                          child: const Center(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: const Center(
                          child: Text(
                            "Forget password? No yawa Tap Me",
                            style: TextStyle(
                              color: Color.fromARGB(255, 93, 83, 83),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        width: 300,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          ),
                          border: Border.all(color: Colors.white70),
                        ),
                        child: const Center(
                          child: Text(
                            "No Account? Sign Up",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
