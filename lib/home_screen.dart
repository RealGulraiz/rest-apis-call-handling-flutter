import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:restapis_bootcamp/example_five.dart';
import 'package:restapis_bootcamp/example_four.dart';
import 'package:restapis_bootcamp/example_one.dart';
import 'package:restapis_bootcamp/example_three.dart';
import 'package:restapis_bootcamp/example_two.dart';
import 'package:restapis_bootcamp/get_api_screen.dart';
import 'package:restapis_bootcamp/post_api_screen.dart';
import 'models/PostsModel.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('REST APIs',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24, fontFamily: 'Times New Roman',),
            ),
            const SizedBox(height: 10,),
            const Text('Get & Post API Calls',
              style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Times New Roman',),
            ),
            const SizedBox(height: 80,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => GetApiScreen()));
              },
              child: const Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text('Get Api Calls',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22,),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PostApiScreen()));
              },
              child: const Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text('Post Api Calls',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22,),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



