import 'package:appdoctor/screens/createaccount.dart';
import 'package:appdoctor/screens/patientlogin.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(context) =>

      MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: "/login",
          routes: {
            "/login": (context) => LoginPage(),
            "/home": (context) => PatientPage(),
            "/account": (context) => AccountPage(),
          }
      );
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(context) =>
      Scaffold(
          body: LayoutBuilder(
              builder: (context, constraints) {
  var isChecked;
  return AnimatedContainer(
  duration: Duration(milliseconds: 500),
  color: Colors.white38,
  padding: constraints.maxWidth < 500 ? EdgeInsets.zero : const EdgeInsets.all(30.0),
  child: Center(
  // child: Padding(
  //   padding: const EdgeInsets.all(50.0),
  //   // child: Padding(
  //   padding: const EdgeInsets.only(left: 500.0),
  //   child: Container(
  //     color: Colors.white,
  //     height: 500,
  //     width: 800,

  // child: Padding(
  //   padding: const EdgeInsets.all(80.0),
    child: Row(
    children: [
    new Image.asset(
    'assets/images/login.png',
    width: 875,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
    ),

    // Spacer(),
    Padding(
    padding: const EdgeInsets.all(60),
    child:Container(

    padding: const EdgeInsets.symmetric(
    vertical: 25.0, horizontal: 25.0
    ),
    constraints: BoxConstraints(
    maxWidth:400 ,
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
    color: Colors.grey[100], boxShadow: [new BoxShadow(
      color: Colors.black26,
      blurRadius: 20.0,
    ),]
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
      GestureDetector(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
          },
          child: CustomSwitchButton(
            backgroundColor: Colors.green,
            unCheckedColor: Colors.white,
            animationDuration: Duration(milliseconds: 200),
            checkedColor: Colors.white,
            checked: isChecked,
          ))
    ],
    ),

    // Spacer(),
    // Text("Patient Login"),
    
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
    padding: const EdgeInsets.only(right:20,left:90),
    child: RaisedButton(
    color: Colors.blue,
    child: Text("Log in", style: TextStyle(color: Colors.white)),
    onPressed: ()
    {
    Navigator.pushReplacementNamed(
    context,
    "/home"
    );
    }
    ),
    ),Padding(
    padding: const EdgeInsets.only(right:10,left:10),
    child: RaisedButton(
    color: Colors.blue,
    child: Text("Sign in", style: TextStyle(color: Colors.white)),
    onPressed: () {}
    // {
    //   Navigator.pushReplacementNamed(
    //       context,
    //       "/home"
    //   );
    // }
    ),
    )]

    ),

    ]),
    ),

    )],
    ),
  ),
  );



  }));
}


// class HomePage extends StatelessWidget {
//   @override
//   Widget build(context) => Scaffold(
//       appBar: AppBar(title: Text("test")),
//       drawer: MediaQuery.of(context).size.width < 500 ? Drawer(
//         child: Menu(),
//       ) : null,
//       body: SafeArea(
//           child:Center(
//               child: MediaQuery.of(context).size.width < 500 ? Content() :
//               Row(
//                   children: [
//                     Container(
//                         width: 200.0,
//                         child: Menu()
//                     ),
//                     Container(
//                         width: MediaQuery.of(context).size.width-200.0,
//                         child: Content()
//                     )
//                   ]
//               )
//           )
//       )
//   );
// }
//
// class Menu extends StatelessWidget {
//   @override
//   Widget build(context) => ListView(
//       children: [
//         FlatButton(
//             onPressed: () {},
//             child: ListTile(
//               leading: Icon(Icons.looks_one),
//               title: Text("First Link"),
//             )
//         ),
//         FlatButton(
//             onPressed: () {},
//             child: ListTile(
//               leading: Icon(Icons.looks_two),
//               title: Text("Second Link"),
//             )
//         ),
//         FlatButton(
//             onPressed: () {Navigator.pushReplacementNamed(
//                 context, "/login");},
//             child: ListTile(
//               leading: Icon(Icons.exit_to_app),
//               title: Text("Log Out"),
//             )
//         )
//       ]
//   );
// }
//
// class Content extends StatelessWidget {
//   final List<String> elements = ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "A Million Billion Trillion", "A much, much longer text that will still fit"];
//   @override
//   Widget build(context) => GridView.builder(
//       itemCount: elements.length,
//       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//         maxCrossAxisExtent: 130.0,
//         crossAxisSpacing: 20.0,
//         mainAxisSpacing: 20.0,
//       ),
//       itemBuilder: (context, i) => Card(
//           child: Center(
//               child: Padding(
//                   padding: EdgeInsets.all(8.0), child: Text(elements[i])
//               )
//           )
//       )
//   );
// }