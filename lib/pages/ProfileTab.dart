import 'package:flutter/material.dart';
import 'package:untitled4/lib/helpers/my_flutter_app_icons.dart';
import 'package:untitled4/lib/helpers/utils.dart';
import 'package:untitled4/lib/models/category.dart';
import 'package:untitled4/lib/widgets/TabBar.dart';
import 'package:untitled4/lib/widgets/categorycard.dart';
import 'package:untitled4/lib/widgets/Profile Content.dart';
import 'package:untitled4/lib/widgets/categoryicon.dart';
import 'package:untitled4/main.dart';
import 'package:untitled4/lib/helpers/appcolors.dart';
import 'package:untitled4/pages/About_us.dart';
import 'package:untitled4/pages/SignUp.dart';
import 'package:untitled4/pages/contact_us.dart';


class ProfileTab extends StatelessWidget{

  List <Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: Text ('PROFILE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.main_color,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0, //remove the app bar shadow
        iconTheme: IconThemeData(color: AppColors.main_color),
      ),


      body:
                      Container(
                        child: ListView(
                          children: [
                        Stack(
                        children: [
                        Container(
                        height: 720,
                          child: Center(
                            child:Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  ClipOval(
                                    child: CategoryIcon(
                                      icon: Icons.account_circle,
                                      color: Colors.transparent,
                                      size: 125,

                                    ),
                                  ),//definitions are to avoid pixel overflow

                                  Text('Kobe Bryant',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xFF2D2A2A),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text('Kobe_24',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF474444),
                                          fontSize: 15
                                      )
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => SignUp()));
                                      },
                                      child: Container(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: ProfileContent(text: 'EDIT PERSONAL INFO',
                                            icon: Icons.analytics,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular (50),
                                              color: Colors.transparent,
                                              border: Border.all(
                                                  color: Colors.transparent,
                                                  width: 4
                                              )
                                          )
                                      )

                                  ),
                                ),
                              ),
                            ), //Edit personal info
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => AboutPage()));
                                      },
                                      child: Container(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: ProfileContent(text: 'ABOUT US',
                                            icon: Icons.article_sharp,
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              border: Border.all(
                                                  color: Colors.transparent,
                                                  width: 4
                                              )
                                          )
                                      )

                                  ),
                                ),
                              ),
                            ), //About Us
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => SignUp()));
                                      },
                                      child: Container(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: ProfileContent(text: 'RECENT ACTIVITY',
                                            icon: Icons.receipt_long_outlined,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular (50),
                                              color: Colors.transparent,
                                              border: Border.all(
                                                  color: Colors.transparent,
                                                  width: 4
                                              )
                                          )
                                      )

                                  ),
                                ),
                              ),
                            ), // Recent Activity
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => SignUp()));
                                      },
                                      child: Container(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: ProfileContent(text: 'HISTORY',
                                            icon: Icons.paste_outlined,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular (50),
                                              color: Colors.transparent,
                                              border: Border.all(
                                                  color: Colors.transparent,
                                                  width: 4
                                              )
                                          )
                                      )

                                  ),
                                ),
                              ),
                            ), // History
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => SignUp()));
                                      },
                                      child: Container(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: ProfileContent(text: 'PENDING PAYMENT',
                                            icon: Icons.payments_outlined,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular (50),
                                              color: Colors.transparent,
                                              border: Border.all(
                                                  color: Colors.transparent,
                                                  width: 4
                                              )
                                          )
                                      )

                                  ),
                                ),
                              ),
                            ), //Pending Payment
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => SignUp()));
                                      },
                                      child: Container(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: ProfileContent(text: 'SETTINGS',
                                            icon: Icons.settings,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular (50),
                                              color: Colors.transparent,
                                              border: Border.all(
                                                  color: Colors.transparent,
                                                  width: 4
                                              )
                                          )
                                      )

                                  ),
                                ),
                              ),
                            ), //Settings
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => SignUp()));
                                      },
                                      child: Container(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: ProfileContent(text: 'INVITE FRIENDS',
                                            icon: Icons.add_box_sharp,
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular (50),
                                              color: Colors.transparent,
                                              border: Border.all(
                                                  color: Colors.transparent,
                                                  width: 4
                                              )
                                          )
                                      ),


                                  ),
                                ),
                              ),
                            ),//Invite Friends
                            Container(
                                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => ContactPage()));
                                          },
                                          child: Container(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: ProfileContent(text: 'CONTACT US',
                                                icon: Icons.add_box_sharp,
                                              ),
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular (50),
                                                  color: Colors.transparent,
                                                  border: Border.all(
                                                      color: Colors.transparent,
                                                      width: 4
                                                  )
                                              )
                                          ),


                                        ),
                                      ),
                                    ),
                                  ),

                          ]
                        ),
                      ),
                        )
                        ],

              )
    ]
                        ),
    ),
    );
  }
}