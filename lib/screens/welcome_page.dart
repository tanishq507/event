import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // Import the lottie package
import '../screens/screen.dart';
import '../widgets/constants.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Flexible(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height *
                          0.4, // Adjust the height as needed
                      child: Lottie.asset(
                          lottieURL), // Replace with the path to your Lottie animation JSON file
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Welcome to Eventify!",
                      style: kHeadline,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text(
                        "Welcome to Eventify, your ultimate event management and scheduling companion. Discover a seamless experience in planning, organizing, and attending events that matter to you. Whether it's a conference, a party, or a workshop, Eventify helps you stay organized and connected.",
                        style: kBodyText,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[850],
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: MyTextButton(
                        bgColor: Colors.white,
                        buttonName: 'Register',
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => RegisterPage()));
                        },
                        textColor: Colors.black87,
                      ),
                    ),
                    Expanded(
                      child: MyTextButton(
                        bgColor: Colors.transparent,
                        buttonName: 'Sign In',
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => SignInPage(),
                              ));
                        },
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
