import 'package:flutter/material.dart';

class Nsu extends StatelessWidget {
  const Nsu({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController user= TextEditingController();
    TextEditingController pass = TextEditingController();
    final _fromkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          "Oxford University",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),

      body: Column(
        children: [
          Form(
            key: _fromkey,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  TextFormField(
                    controller: user,
                    decoration: InputDecoration(
                      hintText: "Enter you ID",
                      labelText: "ID",
                      helperText: "Numbers",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.blue, width: 5),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.blue, width: 5),
                      ),


                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Invalid";
                      }else if(value.length < 8){
                        return "Invalid";
                      }else{
                        return null;
                      }
                    }
                  ),

                  SizedBox(height: 20),
                  TextFormField(
                    controller: pass,
                    decoration: InputDecoration(
                      hintText: "Enter you Password",
                      labelText: "password",
                      helperText: "Numbers",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.blue, width: 5),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.blue, width: 5),
                      ),
                    ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Invalid";
                        }else if(value.length < 8){
                          return "Invalid";
                        }else{
                          return null;
                        }
                      }
                  ),

                  ElevatedButton(
                    onPressed: () {

                      if(_fromkey.currentState!.validate()){
                        print(user.text);
                        print(pass.text);
                      }else{
                        print("Invalid");
                      }
                      user.clear();
                      pass.clear();
                    },
                    child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 15),),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20,
                      ),
backgroundColor: Colors.blue[900],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
