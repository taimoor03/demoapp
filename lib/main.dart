import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  get heightFactor => null;

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Simple Login Page"),
        ),
        body: Material(
          child: Center(
            heightFactor: 4.5,
            child: Column(
              // Column Widget
              children: [
                const Text(
                  "Tutorial Kart",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.cyan,
                      height: 4.0,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Sign In",
                  style: TextStyle(fontSize: 18),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, top: 10.0, right: 20.0, bottom: 5.0),
                  child: TextField(
                    keyboardType: TextInputType.name,
                    maxLines: 1,
                    maxLength: 30,
                    decoration: InputDecoration(
                      hintText: "User Name",
                      labelText: "Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                  child: TextField(
                    keyboardType: TextInputType.name,
                    maxLines: 1,
                    maxLength: 20,
                    decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const Text(
                  "Forgot Password\n",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.cyan, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  //Elevated or simple Button
                  autofocus: true,
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
                  child: const Text("Login In"),
                ),
                Row(children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 40.0, right: 10, top: 10),
                    child: Text(
                      "Does not have account?",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text("Sign In",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue)),
                  )
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
