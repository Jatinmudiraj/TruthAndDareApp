import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:trial/pages/wheel_screen.dart';

class Truth extends StatefulWidget {
  const Truth({super.key});

  @override
  State<Truth> createState() => _TruthState();
}

class _TruthState extends State<Truth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2b2e36),
      body: SafeArea(child: Column(
        children: <Widget>[
          SizedBox(height: 10,),
          Padding(padding: EdgeInsets.only(top: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              RawMaterialButton(onPressed: (){},
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 22,
              ),
              shape: CircleBorder(),
              elevation: 2.0,
              fillColor: Color(0xff3f4249),
              padding: EdgeInsets.all(12),
              ),
              Text("Truth",style: TextStyle(fontSize: 22, color: Color(0xff808286)),),
              RawMaterialButton(onPressed: (){},
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 22,
              ),
              shape: CircleBorder(),
              elevation: 2.0,
              fillColor: Color(0xff3f4249),
              padding: EdgeInsets.all(12),
              ),
            ],
          ),
          ),
          SizedBox(height: 40,),
          Card(
            color: Color(0xFF6bb23e),
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              height: 400,
              width: MediaQuery.of(context).size.width/1.2,
              padding: EdgeInsets.all(36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Truth for You",style: TextStyle(fontSize: 32,color: Colors.white, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    width: 250,
                    // padding: EdgeInsets.only(left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 32),
                        child: Text("Of the people in this room who is the most amazing one?",style: TextStyle(fontSize: 28,color: Colors.white, fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center,
                        ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ),
          Expanded(child: 
          Container(
            padding: EdgeInsets.only(bottom: 38),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Container(
                width: 150,
                child: RawMaterialButton(onPressed: () {
                  
                },
                child: Text("complete",style: TextStyle(fontSize: 22, color: Color(0xff808286),),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
                ),
                elevation: 2.0,
                fillColor: Color(0xff3f4249),
                padding: EdgeInsets.all(12),
                
                ),
              ),
              Container(
                width: 150,
                child: RawMaterialButton(onPressed: () {
                  
                },
                child: Text("Forfeit",style: TextStyle(fontSize: 22, color: Color(0xff808286),),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)
                ),
                elevation: 2.0,
                fillColor: Color.fromARGB(255, 214, 74, 31),
                padding: EdgeInsets.all(12),
                
                ),
              ),
              
            ],),
          ))
        ],
      )),
    );
  }
}