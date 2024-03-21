import 'package:finalproject/signup.dart';
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
    Text('Login',
    style: TextStyle(
    color: Colors.black,
    fontSize: 30,
    fontWeight: FontWeight.bold),
    textAlign: TextAlign.center),
    SizedBox(height: 20,),
    Text(
    'Login to your account',
    style: TextStyle(color: Colors.black),),
      SizedBox(height: 20),
      Align(
          alignment: Alignment.centerLeft,
          child: Text('Email')),
      TextField(
        obscureText: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelStyle: TextStyle(color: Colors.black),
        ),
      ),
          SizedBox(height: 20),
          Align(
              alignment: Alignment.centerLeft,
              child: Text('Password')),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelStyle: TextStyle(color: Colors.black),
            ),
          ),
      SizedBox(height: 20),
      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,fixedSize: Size(300, 50)),
          onPressed: (){();},
          child:Text('Login',style: TextStyle(fontSize: 20,color: Colors.black),)),
      SizedBox(height: 20),
      TextButton(onPressed: (){Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Signup()));}, child: Text('Dont have an account?SIGN UP',
        style: TextStyle(color: Colors.black),)),
      SizedBox(height: 20),
      Container(height: 300,width: 400,child: Image.asset('images/login.png')),
    ])));
  }
}
