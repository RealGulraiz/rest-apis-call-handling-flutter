import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:restapis_bootcamp/example_five.dart';
import 'package:restapis_bootcamp/example_four.dart';
import 'package:restapis_bootcamp/example_one.dart';
import 'package:restapis_bootcamp/example_three.dart';
import 'package:restapis_bootcamp/example_two.dart';
import 'models/PostsModel.dart';

// Example #1
// Get API Call - Building List using DartToJson Plugin

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // List<PostsModel> postList = [];
  // Future<List<PostsModel>> getPostApi()async{
  //   final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  //   var data = jsonDecode(response.body.toString());
  //
  //   if(response.statusCode == 200){
  //     // postList.clear();
  //     for(Map i in data){
  //       postList.add(PostsModel.fromJson(i));
  //     }
  //     return postList;
  //   } else{
  //     return postList;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('Posts API'),
    //     centerTitle: true,
    //   ),
    //   body: Column(
    //     children: [
    //       Expanded(
    //         child: FutureBuilder(
    //           future: getPostApi(),
    //             builder: (context, snapshot){
    //               if(!snapshot.hasData){
    //                 return Text('loading...');
    //               }else{
    //                 return ListView.builder(
    //                   itemCount: postList.length,
    //                     itemBuilder: (context, index){
    //                   return Card(
    //                     child: Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Column(
    //                         mainAxisAlignment: MainAxisAlignment.start,
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: [
    //                           Text('Title', style: Theme.of(context).textTheme.titleMedium,),
    //                           Text(postList[index].title.toString()),
    //                           SizedBox(height: 10,),
    //                           Text('Description', style: Theme.of(context).textTheme.titleMedium,),
    //                           Text(postList[index].body.toString()),
    //                         ],
    //                       ),
    //                     ),
    //                   );
    //                 });
    //               }
    //             }
    //         ),
    //       ),
    //     ],
    //   ),
    // );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('GET API CALL',
              style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 24, fontFamily: 'Times New Roman',),
            ),
            const SizedBox(height: 10,),
            const Text('Building List using JSON Data',
              style: TextStyle(color: Colors.white30, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Times New Roman',),
            ),
            const SizedBox(height: 80,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ExampleOne()));
              },
              child: const Card(
                color: Colors.grey,
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
                color: Colors.grey,
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
                color: Colors.grey,
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
                color: Colors.grey,
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
                color: Colors.grey,
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



