import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title:Text('ABOUT US',
        style: TextStyle(
          color: Colors.black,
        ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
                child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        Text(
                        "WHO ARE WE?",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "IMARKET is a mobile and web application which allows day-to-day management of the e-commerce activities of each store(tracking orders, updating product catalog) without requiring the intervention of a storekeeper. To stand out from other e-commerce solution, IMARKET offers a split payment system(several people can pay the price of their share for a single order) \n",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black38,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "IMARKET is a product of IWOMI Technologies which is a Cameroonian Fintech and major player in the fight for financial inclusion through the digital transformation of the banking and finance sector in Africa. IWOMI specializes in integration, the development of revolutionary and innovative solutions, strategy consulting, training, organization and transformation of business, and transformation of businesses, and in information systems services. We provide our partners/customers with quality, innovative revolutionary and cutting-edge solutions and services, indexed to best practices and international standards, which combine strategic vision, business knowledge and technical expertise. This allows them to gain a competitive advantage",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget makeInput({label, obsureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obsureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(

            ),
          ),
          border: OutlineInputBorder(
                 ),
        ),
      ),
      SizedBox(
        height: 30,
      )
    ],
  );
}
