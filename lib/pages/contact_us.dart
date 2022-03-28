import 'package:untitled4/pages/contact_us.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          leading:
          IconButton( onPressed: (){
            Navigator.pop(context);
          },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
        ),
      body: contactUs(
          logo: AssetImage('images/slide_11.png'),
          email: 'adoshi26.ad@gmail.com',
          companyName: 'Abhishek Doshi',
          phoneNumber: '+91123456789',
          website: 'https://abhishekdoshi.godaddysites.com',
          githubUserName: 'AbhishekDoshi26',
          linkedinURL: 'https://www.linkedin.com/in/abhishek-doshi-520983199/',
          tagLine: 'CONTACT US',
          twitterHandle: 'AbhishekDoshi26',
          textColor: Colors.blue,
          cardColor: Colors.white,
          taglineColor: Colors.black,
          companyColor: Colors.black,
        ),
    );
  }

  contactUs({required AssetImage logo, required String email, required String companyName, required String phoneNumber, required String website, required String githubUserName, required String linkedinURL, required String tagLine, required String twitterHandle, required MaterialColor textColor, required Color cardColor, required Color taglineColor, required Color companyColor}) {}
}

Widget makeInput({label,obsureText = false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label,style:TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Colors.black87
      ),),
      SizedBox(height: 5,),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(

            ),
          ),
          border: OutlineInputBorder(

          ),
        ),
      ),
      SizedBox(height: 30,)

    ],
  );
}