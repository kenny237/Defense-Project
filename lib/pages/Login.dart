import 'package:flutter/material.dart';
import 'package:untitled4/lib/helpers/appcolors.dart';
import 'package:untitled4/lib/widgets/background.dart';
import 'package:untitled4/pages/HomePage.dart';
import 'package:untitled4/pages/categorypage.dart';
import 'package:untitled4/pages/SignUp.dart';
import 'package:untitled4/pages/Login.dart';



class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
          child: Stack(
              children: [
                BackGround(name: AppColors.backG),
                Center(
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 20,),
                              Text('L O G I N',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xFF032067),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 0,),
                              Text('.....',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xFF032067),
                                      fontSize: 18
                                  )
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: TextField(
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      border: OutlineInputBorder(),
                                      labelText: 'Email',
                                      hintText: 'Enter valid mail id as abc@gmail.com'
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      border: OutlineInputBorder(),
                                      labelText: 'Password',
                                      hintText: 'Enter your secure password'
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Forgot Password?',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Color(0xFF032067),
                                        fontSize: 18
                                    )
                                ),
                              ),

                            ],
                          )
                        ),

                        SizedBox(height: 0,), //space out
                        Padding(
                          padding: const EdgeInsets.all(20),//padding to prevent the edge of the button from touching the screen
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Home() ));

                              },
                              style: TextButton.styleFrom(
                                shape:  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                backgroundColor: Color(0xFF032067),
                                padding: EdgeInsets.all(20),

                              ) ,
                              child: Text('L O G I N',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                  splashColor: Color(0xFF032067).withOpacity(0.2),
                                  highlightColor: Color(0xFF032067),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Login()));
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.all(15),
                                      child: Text('Login with F A C E B O O K',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF032067),
                                              fontWeight: FontWeight.bold
                                          )
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular (50),
                                          color: Colors.transparent,
                                          border: Border.all(
                                              color: Color(0xFF032067),
                                              width: 4
                                          )
                                      )
                                  )

                              ),
                            ),
                          ),
                        )
                      ],
                    )
                ),
              ]),
        )
    );
  }
}