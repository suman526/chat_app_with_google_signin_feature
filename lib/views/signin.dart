import 'package:docker_app/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Get Yourself SignIn",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ))),
      body: Center(
        child: GestureDetector(
          onTap: () {
            AuthMethods().signInWithGoogle(context);
          },
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 210,
                decoration: BoxDecoration(
                    image: DecorationImage(fit: BoxFit.fill, image: NetworkImage(
                        //"https://elements-cover-images-0.imgix.net/821208ca-2d4e-414c-92f6-e4994160d7c1?auto=compress%2Cformat&fit=max&w=710&s=36db30049345a05b33b7226f94fd3db4"
                        //"http://www.gradleaders.com/media/4620/live-chat.gif?anchor=center&mode=crop&width=1024&height=512&rnd=132162910640000000"
                        "https://i.pinimg.com/originals/20/e4/28/20e428e4cd16105000c71d68cfd569c6.gif"))),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    //image: DecorationImage(
                    //  image: NetworkImage(
                    //    "https://elements-cover-images-0.imgix.net/821208ca-2d4e-414c-92f6-e4994160d7c1?auto=compress%2Cformat&fit=max&w=710&s=36db30049345a05b33b7226f94fd3db4")),
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                  child: Text(
                    "Sign In with Google",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
