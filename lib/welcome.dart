import 'package:finalproject/login.dart';
import 'package:finalproject/signup.dart';
import 'package:flutter/material.dart';
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
                  Text('Welcome',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
                  SizedBox(height: 20),
                   Text('Slash Flutter provides extraordinary flutter tutorials.Do Subscribe!',
             textAlign: TextAlign.center,),
                   SizedBox(height: 20),
                   Container(height: 300,width: 400,child: Image.asset('images/images.png')),
                  SizedBox(height: 20),
              ElevatedButton(onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Signup()),
              );}, child: Text('Login',style: TextStyle(fontSize: 20,color: Colors.black))),
              SizedBox(height: 20),
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,fixedSize: Size(300, 50)),
                  onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );}, child: Text('Sign Up',style: TextStyle(fontSize:20,color: Colors.black)))
                  ],
    )));
  }
}
