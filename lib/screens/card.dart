import 'package:examplevast/constants/myButton.dart';
import 'package:examplevast/constants/myText.dart';
import 'package:flutter/material.dart';

import '../constants/size_config.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0,top: 22,right: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xffF5F5F5),
                  radius: 25,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(14),),
                Image.asset('images/Frame.png'),
                SizedBox(
                  height: getProportionateScreenHeight(24),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffE1F0FD),
                          radius: 25,
                          child: Icon(
                            Icons.add_chart_rounded,
                            color: Color(0xff074FBA),
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(8),),
                        myText(data: 'Details',
                          color: Color(0xff252525),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffFCE1FD),
                          radius: 25,
                          child: Icon(
                            Icons.add_card,
                            color: Color(0xff760A58),
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(8),),
                        myText(data: 'Fund',
                          color: Color(0xff252525),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffFDEFE1),
                          radius: 25,
                          child: Icon(
                            Icons.add_card,
                            color: Color(0xff6D3603),
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(8),),
                        myText(data: 'Withdraw',
                          color: Color(0xff252525),
                          fontWeight: FontWeight.w400,
                          fontSize: 16,),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffFDE1E1),
                          radius: 25,
                          child: Icon(
                            Icons.airplanemode_inactive,
                            color: Color(0xff540303),
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(8),),
                        myText(data: 'Activate',
                        color: Color(0xff252525),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(30),),
                Row(
                  children: [
                    myText(data: 'Card History',
                    color: Color(0xff1E1042),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,),
                    Spacer(),
                    myButton(height: getProportionateScreenHeight(23),
                        width: 56,
                        color: Color(0xffF6F6F6),
                        borderRadius: 4,
                        child: myText(
                      data: 'see all',
                    ))
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(22),),
               SingleChildScrollView(
                 scrollDirection: Axis.vertical,
                 child: Column(
                   children: [
                     myButton(
                         height: getProportionateScreenHeight(70),
                         width: getProportionateScreenWidth(366),
                         borderRadius: 12,
                         color: Color(0xffF9F9F9),
                         child: Padding(
                           padding: const EdgeInsets.only(left: 20,top: 6,right: 24),
                           child: Column(
                             children: [
                               Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   CircleAvatar(
                                     backgroundColor: Color(0xffEBF4FF),
                                     radius: 25,
                                     child: Icon(
                                       Icons.read_more_sharp,
                                       color: Color(0xff0B64D3),
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 10,left: 6),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         myText(data: 'Wallet Topup',
                                           textAlign: TextAlign.center,
                                           fontWeight: FontWeight.w500,
                                           color: Colors.black,
                                           fontSize: 14,
                                         ),
                                         myText(data: '28th July, 2021 • 02:04 PM',
                                           textAlign: TextAlign.center,
                                           fontWeight: FontWeight.w400,
                                           color: Colors.grey,
                                           fontSize: 10,
                                         ),
                                       ],
                                     ),
                                   ),
                                   Spacer(),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 10.0),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         myText(data: '+\$3,000',
                                           textAlign: TextAlign.center,
                                           fontWeight: FontWeight.w500,
                                           color: Colors.black,
                                           fontSize: 14,
                                         ),
                                         SizedBox(height: getProportionateScreenHeight(9),),
                                         Padding(
                                           padding: const EdgeInsets.only(left: 10.0),
                                           child: myText(data: 'Successful',
                                             textAlign: TextAlign.center,
                                             fontWeight: FontWeight.w400,
                                             color: Color(0xff00BE7C),
                                             fontSize: 10,
                                           ),
                                         ),
                                       ],
                                     ),
                                   ),

                                 ],
                               ),
                             ],
                           ),
                         )),
                     SizedBox(height: getProportionateScreenHeight(6),),
                     myButton(
                         height: getProportionateScreenHeight(70),
                         width: getProportionateScreenWidth(366),
                         borderRadius: 12,
                         color: Color(0xffF9F9F9),
                         child: Padding(
                           padding: const EdgeInsets.only(left: 20,top: 6,right: 24),
                           child: Column(
                             children: [
                               Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   CircleAvatar(
                                     backgroundColor: Color(0xffFFEBEB),
                                     radius: 25,
                                     child: Icon(
                                       Icons.upgrade_outlined,
                                       color: Color(0xffD30B0B),
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 10,left: 6),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         myText(data: 'Withdrawal',
                                           textAlign: TextAlign.center,
                                           fontWeight: FontWeight.w500,
                                           color: Colors.black,
                                           fontSize: 14,
                                         ),

                                         myText(data: '28th July, 2021 • 02:04 PM',
                                           textAlign: TextAlign.center,
                                           fontWeight: FontWeight.w400,
                                           color: Colors.grey,
                                           fontSize: 10,
                                         ),
                                       ],
                                     ),
                                   ),
                                   Spacer(),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 10.0),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         myText(data: '+\$3,000',
                                           textAlign: TextAlign.center,
                                           fontWeight: FontWeight.w500,
                                           color: Colors.black,
                                           fontSize: 14,
                                         ),
                                         SizedBox(height: getProportionateScreenHeight(9),),
                                         Padding(
                                           padding: const EdgeInsets.only(left: 15.0),
                                           child: myText(data: 'failed',
                                             textAlign: TextAlign.center,
                                             fontWeight: FontWeight.w400,
                                             color: Colors.red,
                                             fontSize: 10,
                                           ),
                                         ),
                                       ],
                                     ),
                                   ),

                                 ],
                               ),
                             ],
                           ),
                         )),
                     SizedBox(height: getProportionateScreenHeight(6),),
                     myButton(
                         height: getProportionateScreenHeight(70),
                         width: getProportionateScreenWidth(366),
                         borderRadius: 12,
                         color: Color(0xffF9F9F9),
                         child: Padding(
                           padding: const EdgeInsets.only(left: 20,top: 6,right: 24),
                           child: Column(
                             children: [
                               Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   CircleAvatar(
                                     backgroundColor: Color(0xffEBF4FF),
                                     radius: 25,
                                     child: Icon(
                                       Icons.upgrade_outlined,
                                       color: Color(0xffD30B0B),
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 10,left: 6),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         myText(data: 'USSD Card Funding',
                                           textAlign: TextAlign.center,
                                           fontWeight: FontWeight.w500,
                                           color: Colors.black,
                                           fontSize: 14,
                                         ),
                                         myText(data: '28th July, 2021 • 02:04 PM',
                                           textAlign: TextAlign.center,
                                           fontWeight: FontWeight.w400,
                                           color: Colors.grey,
                                           fontSize: 10,
                                         ),
                                       ],
                                     ),
                                   ),
                                   Spacer(),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 10.0),
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         myText(data: '+\$3,000',
                                           textAlign: TextAlign.center,
                                           fontWeight: FontWeight.w500,
                                           color: Colors.black,
                                           fontSize: 14,
                                         ),
                                         SizedBox(height: getProportionateScreenHeight(9),),
                                         Padding(
                                           padding: const EdgeInsets.only(left: 15.0),
                                           child: myText(data: 'pending',
                                             textAlign: TextAlign.center,
                                             fontWeight: FontWeight.w400,
                                             color: Color(0xffF4C314),
                                             fontSize: 10,
                                           ),
                                         ),
                                       ],
                                     ),
                                   ),

                                 ],
                               ),
                             ],
                           ),
                         )),

                   ],
                 ),
               ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
