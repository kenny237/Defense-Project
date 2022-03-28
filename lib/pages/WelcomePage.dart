import 'package:flutter/material.dart';
import 'package:untitled4/lib/helpers/appcolors.dart';
import 'package:untitled4/lib/widgets/background.dart';
import 'package:untitled4/pages/categorypage.dart';
import 'package:untitled4/pages/SignUp.dart';
import 'package:untitled4/pages/Login.dart';
import 'package:flutter_svg/flutter_svg.dart';


class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
        BackGround(name: AppColors.backG),
              Container(
                child: Center(
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/logo.png",
                        height: 400,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                        ),//definitions are to avoid pixel overflow

                        SizedBox(height: 20,),
                        Text('WELCOME',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.main_color,
                              fontSize: 28,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 0,),
                        Text('.....',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.main_color,
                                fontSize: 18
                            )
                        ),
                        SizedBox(height: 0,), //space out
                        Padding(
                          padding: const EdgeInsets.all(20),//padding to prevent the edge of the button from touching the screen
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SignUp() ));
                              },
                              style: TextButton.styleFrom(
                                shape:  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                backgroundColor: Color(0xFF032067),
                                padding: EdgeInsets.all(20),

                              ) ,
                              child: Text('S I G N  U P',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
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
                                      child: Text('L O G I N',
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
              )
            ]
          ),
        );
  }
}