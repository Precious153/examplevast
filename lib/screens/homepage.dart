import 'dart:io';


import 'package:examplevast/screens/networkerror.dart';
import 'package:examplevast/screens/processing.dart';
import 'package:examplevast/screens/success.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/color.dart';
import '../constants/myText.dart';
import 'card.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  int curretTab =0;
  final List<Widget> screens = [
    Success(),
    NetworkError(),
    Card(),
    Processing(),
  ];

  final PageStorageBucket bucket =  PageStorageBucket();
  Widget currentScreen = Success();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    MaterialButton(
                      onPressed: (){
                        setState(() {
                          currentScreen = Success();
                          curretTab=0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Icon(Icons.home_filled,
                            color:curretTab==0 ?
                            Palette.kBackgroungColor:Colors.grey,),
                          myText(
                            data: 'Home',
                            color: curretTab==0 ?
                            Palette.kBackgroungColor: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: (){
                        setState(() {
                          currentScreen = NetworkError();
                          curretTab=1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Icon(Icons.directions_car_filled,
                            color:curretTab==1 ?
                            Palette.kBackgroungColor:Colors.grey,),
                          myText(
                            data: 'Transaction',
                            color: curretTab==1 ?
                            Palette.kBackgroungColor: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    MaterialButton(
                      onPressed: (){
                        setState(() {
                          currentScreen = Cards();
                          curretTab=2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [

                          Icon(Icons.credit_card_rounded,
                            color:curretTab==2 ?
                            Palette.kBackgroungColor: Colors.grey
                          ),
                         //  Text('C',
                         // ),
                          myText(
                             data: 'Cards',
                            color: curretTab==2 ?
                            Palette.kBackgroungColor: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: (){
                        setState(() {
                          currentScreen =Processing();
                          curretTab=3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_circle_outlined,
                            color:curretTab==3 ?
                            Palette.kBackgroungColor:Colors.grey,),
                          myText(
                            data: 'Profile',
                            color: curretTab==3 ?
                            Palette.kBackgroungColor: Colors.grey,
                          )
                        ],
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

