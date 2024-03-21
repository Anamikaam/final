import 'package:finalproject/welcome.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text('Sign up',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          SizedBox(height: 20,),
          Text(
            'Create an account, its free',
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(height: 20),
          Align(
              alignment: Alignment.centerLeft,
              child: Text('Username')),
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
          Align(
              alignment: Alignment.centerLeft,
              child: Text('Confirm Password')),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelStyle: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,fixedSize: Size(300, 50)),
              onPressed: (){ Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Welcome()),
              );},
              child:Text('Sign up',style: TextStyle(fontSize: 20,color: Colors.black),)),
          SizedBox(height: 20),
          TextButton(onPressed: (){}, child: Text('Already have an account?LOGIN',
            style: TextStyle(color: Colors.black),)),
        ],
      ),
    ));
  }
}
