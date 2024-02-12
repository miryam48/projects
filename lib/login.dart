import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

TextEditingController _inemailcontroller=TextEditingController();
TextEditingController _inpasswordcontroller=TextEditingController();

Future signIn() async{
  await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _inemailcontroller.text,
      password: _inpasswordcontroller.text
  );
}


class _signinState extends State<signin> {
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
                      'Sign In',
                    style: TextStyle(
                      fontSize: 25
                    ),
                  ),
                ),
                padd,
                TextField(
                  controller: _inemailcontroller,
                  decoration: InputDecoration(
                      hintText: ('EMail or Phone number'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),

                    )
                  ),
                ),
                padd,
                TextField(
                  controller: _inpasswordcontroller,
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
                    signIn();
                    },
                    child: Text('Sign In')
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
