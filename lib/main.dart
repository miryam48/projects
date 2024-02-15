import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projectsini/signin.dart';
import 'package:projectsini/signup.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyAWZjat50POuPiUWXVi2T40rCKB9-C6y8Q",
        appId: "1:819039004770:android:1e03f3beb883a7e7bb493b",
        messagingSenderId: "819039004770",
        projectId: "project22-b9b88")
  );
 runApp(MaterialApp(debugShowCheckedModeBanner: false,home: myapp(),));
}
class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.home)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          PopupMenuButton(itemBuilder: (context)=>[
            PopupMenuItem(child: Text('Select')),
            PopupMenuItem(child: Text('Add')),
            PopupMenuItem(child: Text('Edit')),
            PopupMenuItem(child: Text('Delete')),
          ]
          )
        ],
      ),
      drawer: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.indigo),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('lib/Asset/image1.jpg'),
                ),
                accountName: Text('Nirmal',style: TextStyle(color: Colors.yellow),),
                accountEmail: Text('Nirmal5678@gmail.com',style: TextStyle(color: Colors.yellow),),
              ),
              ListTile(
                leading: Icon(Icons.contacts,color: Colors.indigo),
                title: Text('Contacts',style: TextStyle(color: Colors.brown),),
              ),
              ListTile(
                leading: Icon(Icons.camera_alt,color: Colors.indigo),
                title: Text('Camera',style: TextStyle(color: Colors.brown),),
              ),
              ListTile(
                leading: Icon(Icons.calendar_month,color: Colors.indigo),
                title: Text('Calendar',style: TextStyle(color: Colors.brown),),
              ),
              ListTile(
                leading: Icon(Icons.pages,color: Colors.indigo,),
                title: Text('Pages',style: TextStyle(color: Colors.brown),),
              ),
            ],
          )
        ),
      ),
      body: signup(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
              context: context,
              builder: (BuildContext context){
             return AlertDialog(
               title: Center(child: Text("Alert")),
               content: TextField(
                 decoration: InputDecoration(hintText: "Type content"),
               ),
               actions: [
                 ElevatedButton(
                     onPressed: (){},
                     child: Text("Ok")
                 ),
                 OutlinedButton(
                     onPressed: (){
                       Navigator.pop(context);
                     },
                     child: Text("Cancel")
                 )
               ],
             );
              }
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
