import 'package:flutter/material.dart';
void main(){
runApp(MaterialApp(debugShowCheckedModeBanner: false,home: signin(),));
}
class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
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
                    backgroundColor: Colors.black
                  ),
                    onPressed: (){},
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
