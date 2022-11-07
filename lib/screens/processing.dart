import 'package:examplevast/constants/color.dart';
import 'package:examplevast/constants/myButton.dart';
import 'package:examplevast/constants/myText.dart';
import 'package:flutter/material.dart';

import '../constants/size_config.dart';

class Processing extends StatelessWidget {
  const Processing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0,right:24 ,bottom:17 ,top: 40),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffF5F5F5),
                    radius: 25,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(20),),
                  myText(data: 'Fund Card',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],

              ),



              SizedBox(height: getProportionateScreenHeight(130),),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  myButton(
                    height:getProportionateScreenHeight(314),
                    width: getProportionateScreenWidth(350),
                    color: Palette.kButtonColor2,
                    borderRadius: 8,
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height:getProportionateScreenHeight(100)),
                          myText(data: 'Transaction is processing',
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                          myText(data: 'Your transaction was not \n successful',
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                          myText(data: '\$6,000',
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                            fontSize: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 25,
                                  child: Icon(
                                    Icons.calendar_month_sharp,
                                    color: Palette.kIconColor,
                                  ),
                                ),
                                SizedBox(width: getProportionateScreenWidth(10),),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    myText(data: 'Transaction date and time',
                                      textAlign: TextAlign.center,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                    myText(data: '13 Sept 2019, 02:04 PM',
                                      textAlign: TextAlign.center,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                      fontSize: 10,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -40,
                    left: 110,
                    child:  myButton(
                      height: 120,
                      width: 120,
                      borderRadius: 12,
                      color: Palette.kProcessingColor,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: myButton(
                              height: 80,
                              width: 80,
                              color: Palette.kProcessingColor2,
                              borderRadius: 8,
                              child:Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  )
                ],
              ),
              Spacer(),
              myButton(
                  height: 60,
                  width: 366,
                  color: Colors.black,
                  borderRadius: 100,
                  child: myText(data: 'Go to Card ',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight:FontWeight.w700,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
