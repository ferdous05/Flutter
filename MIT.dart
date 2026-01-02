import 'package:flutter/material.dart';

class Mit extends StatelessWidget {
  const Mit({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController user = TextEditingController();
    TextEditingController pass = TextEditingController();
    final _formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        title: Text(
          "MIT Reserch",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            'https://www.designyourway.net/blog/wp-content/uploads/2024/04/oxford-university-logo-1200x700.jpg',
            height: 100,
            width: 550,
          ),
          Image.asset('assets/m.png', height: 100, width: 100),

          Form(
            key: _formkey,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    controller: user,
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                      helperText: "Username of MIT",

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black, width: 4),
                      ),
                    ),
                    maxLength: 8,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.black,

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Your text is invalid';
                      } else if (value.length > 8) {
                        return 'Your text is invalid';
                      } else {
                        return null;
                      }
                    },
                  ),

                  SizedBox(height: 10),

                  TextFormField(
                    controller: pass,

                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                      helperText: "Numbers",

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black, width: 4),
                      ),
                    ),
                    maxLength: 8,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.black,

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Invalid";
                      } else if (value.length < 8) {
                        return "Invalid";
                      } else {
                        return null;
                      }
                    },
                  ),

                  ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        print(user.text);
                        print(pass.text);
                      } else {
                        print("Invalid");
                      }

                      user.clear();
                      pass.clear();
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20,
                      ),

                      backgroundColor: Colors.red[700],
                    ),
                  ),
                ],
              ),
            ),
          ),


          Container(
            alignment: Alignment.topLeft,
            height: 100,
            width: 300,

            decoration: BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black12, width: 4),
              boxShadow: [
                BoxShadow(
                  color: Colors.brown.withOpacity(0.5),
                  offset: Offset(8, 20),
                ),

                BoxShadow(
                  color: Colors.red.withOpacity(0.5),
                  offset: Offset(5, 10),
                ),
              ],
            ),

            child: Text(
              "Learning container",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

          ),

          SizedBox(height: 20),

          Card(
          color: Colors.purple,
            child: Text("This is Card"),

          )
        ],
      ),
    );
  }
}
