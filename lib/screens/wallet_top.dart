import 'package:examplevast/constants/myButton.dart';
import 'package:examplevast/constants/size_config.dart';
import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../constants/myText.dart';

class WalletTop extends StatefulWidget {
  const WalletTop({Key? key}) : super(key: key);

  @override
  State<WalletTop> createState() => _WalletTopState();
}

class _WalletTopState extends State<WalletTop> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0,top: 22),
              child: myButton(
                  height: 50,
                  width: 50,
                  color: Palette.kColor,
                  borderRadius: 100,
                  child: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 13,
                color: Colors.black,
              ),),
            ),
            SizedBox(height: 14,),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 153,
                  width: 414,
                  decoration: BoxDecoration(
                      color:  Palette.kBackgroungColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(200,40),
                          bottomRight: Radius.elliptical(200, 40)
                      )
                  ),
                  child: Column(
                    children: [
                      SizedBox(height:getProportionateScreenHeight(25) ,),
                      myText(data: '-₦1500.00',
                      fontWeight: FontWeight.w600,
                      fontSize: 36,
                      color: Colors.white,
                      ),
                      myText(data: '10-11-2019;10:45AM',
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Positioned(
                    top: 90,
                    left: 150,
                    child:
                myButton(
                  height: 100,
                  width: 100,
                  color: Color(0xffEBF4FF),
                  borderRadius: 100,
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 50,
                    color: Colors.black,
                  ),),
                ),
              ],
            ),
            SizedBox(height:getProportionateScreenHeight(60) ,),
            Center(
              child: myText(data: 'WLT- 20221107-4637',
                color: Color(0xff464646),
                fontSize: 14,
                fontWeight: FontWeight.w700
              ),
            ),
            SizedBox(height:getProportionateScreenHeight(32) ,),
            myButton(
                height:getProportionateScreenHeight(40),
                width: getProportionateScreenWidth(414),
                color: Palette.kColor,
                borderRadius: 0,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: myText(data: 'Transaction Details',
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500
            ),
                    ),
                  ],
                )),
            SizedBox(height: getProportionateScreenHeight(16),),
            Padding(
              padding: const EdgeInsets.only(left: 24.0,right: 24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      myText(data: 'Transaction Type',
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff828282),
                        fontSize: 14,
                      ),
                      SizedBox(height: getProportionateScreenHeight(10),),

                      myText(data: 'Wallet Top-Up',
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff333333),
                        fontSize: 10,
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        myText(data: 'Transaction Status',
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff828282),
                          fontSize: 14,
                        ),
                        SizedBox(height: getProportionateScreenHeight(10),),
                        myText(
                          data: 'successful',
                          fontWeight: FontWeight.w400,
                          color: Color(0xff00BE7C),
                          fontSize: 12,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(24),),
            Padding(
              padding: const EdgeInsets.only(left: 38.0,right: 38),
              child: Divider(
                height: 1,
                thickness: 2,
                color: Color(0xffF4F4F4),
              ),
            )

          ],
        ),
      ),
    );
  }
}
