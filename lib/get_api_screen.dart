import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:restapis_bootcamp/example_five.dart';
import 'package:restapis_bootcamp/example_four.dart';
import 'package:restapis_bootcamp/example_one.dart';
import 'package:restapis_bootcamp/example_three.dart';
import 'package:restapis_bootcamp/example_two.dart';
import 'models/PostsModel.dart';
class GetApiScreen extends StatefulWidget {
  const GetApiScreen({Key? key}) : super(key: key);

  @override
  State<GetApiScreen> createState() => _GetApiScreenState();
}

class _GetApiScreenState extends State<GetApiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('GET API CALL',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24, fontFamily: 'Times New Roman',),
            ),
            const SizedBox(height: 10,),
            const Text('Building List using JSON Data',
              style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Times New Roman',),
            ),
            const SizedBox(height: 80,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ExampleOne()));
              },
              child: const Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Scenario #1',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18,),
                      ),
                      SizedBox(height: 5,),
                      Text('Using JsonToDart Plugin Model',
                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 18,),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return ExampleTwo();
                    }));
              },
              child: const Card(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Scenario #2',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18,),
                      ),
                      SizedBox(height: 5,),
                      Text('Using Custom Model',
                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 18,),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return ExampleThree();
                    }));
              },
              child: const Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Scenario #3',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18,),
                      ),
                      const SizedBox(height: 5,),
                      Text('For Complex JSON Data',
                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 18,),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return ExampleFour();
                    }));
              },
              child: const Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Scenario #4',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18,),
                      ),
                      const SizedBox(height: 5,),
                      Text('Complex JSON without Creating Model',
                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 18,),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return ExampleFive();
                    }));
              },
              child: const Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Scenario #5',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18,),
                      ),
                      const SizedBox(height: 5,),
                      Text('With Complex Very JSON Data',
                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 18,),
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
