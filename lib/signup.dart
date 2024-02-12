import 'package:flutter/material.dart';
void main(){
runApp(MaterialApp(debugShowCheckedModeBanner: false,home: signup(),));
}
class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
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
                  decoration: InputDecoration(
                      hintText: ('EMail or Phone number'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),

                      )
                  ),
                ),
                padd,
                TextField(
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
                        backgroundColor: Colors.red
                    ),
                    onPressed: (){},
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
