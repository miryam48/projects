import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}
TextEditingController _emailcontroller=TextEditingController();
TextEditingController _passwordcontroller=TextEditingController();

Future signUp() async{
  await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailcontroller.text,
      password: _passwordcontroller.text
  );
}

class _signupState extends State<signup> {
  Widget padd=SizedBox(height: 10,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 500,
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 25
                    ),
                  ),
                ),
                padd,
                TextField(
                  controller: _emailcontroller,
                  decoration: InputDecoration(
                      hintText: ('EMail or Phone number'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                      )
                  ),
                ),
                padd,
                TextField(
                  controller: _passwordcontroller,
                  decoration: InputDecoration(
                      hintText: ('Password'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                ),
                padd,
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black
                    ),
                    onPressed: (){
                      signUp();
                    },
                    child: Text('Sign Up')
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
