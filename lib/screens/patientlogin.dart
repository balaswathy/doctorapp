import 'package:flutter/material.dart';






class PatientPage extends StatelessWidget {
  @override
  Widget build(context) =>
      Scaffold(
          body: LayoutBuilder(
              builder: (context, constraints) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  color: Colors.white38,
                  padding: constraints.maxWidth < 500 ? EdgeInsets.zero : const EdgeInsets.all(30.0),
                  child: Center(
                    // child: Padding(
                    //   padding: const EdgeInsets.all(50.0),
                    //   // child: Padding(
                    //   padding: const EdgeInsets.only(left: 500.0),
                    child: Container(
                      color: Colors.blue,
                      height: 500,
                      width: 800,

                      child: Row(
                        children: [
                          new Image.asset(
                            'assets/images/login.png',
                            width: 400.0,
                            height: 600.0,
                            fit: BoxFit.cover,
                          ),

                          // Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0,top: 40.0,bottom: 40.0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 25.0, horizontal: 25.0
                              ),
                              constraints: BoxConstraints(
                                maxWidth: 330,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        Text("Welcome back, please login to your account"),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 50.0),
                                          child: Row(
                                            children: [
                                              Text(""),
                                              Text("Doctor id"),
                                              Spacer(),
                                              Text("Patient id"),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),

                                    TextField(
                                        decoration: InputDecoration(
                                            labelText: "Email id"
                                        )
                                    ),
                                    TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                            labelText: "password"
                                        )
                                    ),
                                    Row(
                                      children: [
                                        Text("Remember me"),
                                        Spacer(),
                                        Text("Forgot Password?"),

                                      ],

                                    ),


                                    Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right:20,left:50),
                                            child: RaisedButton(
                                                color: Colors.blue,
                                                child: Text("Log in", style: TextStyle(color: Colors.white)),
                                                onPressed: () {}
                                              // {
                                              //   Navigator.pushReplacementNamed(
                                              //       context,
                                              //       "/home"
                                              //   );
                                              // }
                                            ),
                                          ),Padding(
                                            padding: const EdgeInsets.only(right:10,left:10),
                                            child: RaisedButton(
                                                color: Colors.blue,
                                                child: Text("Sign in", style: TextStyle(color: Colors.white)),
                                                onPressed: ()
                                              {
                                                Navigator.pushReplacementNamed(
                                                    context,
                                                    "/account"
                                                );
                                              }
                                            ),
                                          )]

                                    ),

                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );


              }
          )
      );
}


