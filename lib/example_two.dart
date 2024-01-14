import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// Example #2
// Get API Call - Building List using custom model

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({Key? key}) : super(key: key);

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {

  // Create list for storing data received from Photos API array
  List<Photos> photosList = [];
  
  // Create a Function of type Future to manage photosList data when received
  Future<List<Photos>> getPhotosApi()async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));  // to store Api response
    var data = jsonDecode(response.body.toString());
    if(response.statusCode == 200) {
      for(Map i in data) {
        Photos photos = Photos(title: i['title'], url: i['url']);
        photosList.add(photos);
      }
      return photosList;
    }else {
      return photosList;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API with Custom Model'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getPhotosApi(),
                builder: (context,AsyncSnapshot<List<Photos>> snapshot) {
                  return ListView.builder(
                    itemCount: photosList.length,
                      itemBuilder: (context, index){
                    return ListTile(
                      leading: Image.network(snapshot.data![index].url.toString()),
                      title: Text(snapshot.data![index].title.toString()),

                    );
                  });
                }
            ),
          ),
        ],
      ),
    );
  }
}

// Custom Model for Photos API Call
class Photos {
  String title, url;
  // Constructor
  Photos({required this.title, required this.url});

}