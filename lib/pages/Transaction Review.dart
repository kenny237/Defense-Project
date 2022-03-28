import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled4/lib/helpers/appcolors.dart';

class TransactionReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F9FF),
        appBar: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          backgroundColor: Colors.transparent,
          title: Text(
            'Transaction Review',
            style: TextStyle(
              color: AppColors.main_color,
            ),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: AppColors.main_color,
              )),
        ),
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.max,


                      children: <Widget>[

                        Text('Confirm Operation',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              fontWeight: FontWeight.bold
                            )
                        ),

                        Text('Amount',

                            style: TextStyle(
                                color: AppColors.main_color,
                                fontSize: 14
                            )
                        ),

                        Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              suffixText:  'FCFA', suffixStyle: (TextStyle(
                              color: Colors.black,
                            )),
                              hintText: 'Enter Amount', hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                              isDense: true,
                              contentPadding: EdgeInsets.only( top: 16, bottom: 16),
                            ),
                          ),
                        ), //Amount field

                        Text('Recipient Phone',

                            style: TextStyle(
                                color: AppColors.main_color,
                                fontSize: 14
                            )
                        ),

                        Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              suffixText:  'FCFA', suffixStyle: (TextStyle(
                              color: Colors.black,
                            )),
                              hintText: 'Recipient Phone Number', hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                              isDense: true,
                              contentPadding: EdgeInsets.only( top: 16, bottom: 16),
                            ),
                          ),
                        ), //Recipient Phone field

                        Text('Account',

                            style: TextStyle(
                                color: AppColors.main_color,
                                fontSize: 14
                            )
                        ),

                        Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              suffixText:  'FCFA', suffixStyle: (TextStyle(
                              color: Colors.black,
                            )),
                              hintText: 'Main Account', hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                              isDense: true,
                              contentPadding: EdgeInsets.only( top: 16, bottom: 16),
                            ),
                          ),
                        ), //Account field

                        Text('Payment Mode',

                            style: TextStyle(
                                color: AppColors.main_color,
                                fontSize: 14
                            )
                        ),

                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 15),
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                suffixText:  'FCFA', suffixStyle: (TextStyle(
                                color: Colors.black,
                              )),
                                hintText: 'Mobile Money (MOMO)', hintStyle: TextStyle(
                                color: Colors.black,
                              ),
                                isDense: true,
                                contentPadding: EdgeInsets.only( top: 16, bottom: 16),
                              ),
                            ),
                          ),
                        ), //Payment mode field

                        Padding(
                          padding: EdgeInsets.only(left: 60,right:60, top: 10, bottom: 10),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>
                                        TransactionReview()));
                              },
                              style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                backgroundColor: Color(0xFF1A3682),
                                padding: EdgeInsets.all(15),

                              ),
                              child: Text('P A Y',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          ),
                        ),

                      ]
                  ),
                )
            ),
          )
        ]
        )
    );
  }
}
