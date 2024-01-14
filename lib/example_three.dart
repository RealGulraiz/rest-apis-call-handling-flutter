import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'models/UsersModel.dart';


// Example #3
// Get API Call - Building List for complex jSon data

class ExampleThree extends StatefulWidget {
  const ExampleThree({Key? key}) : super(key: key);

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {
  
  // Create list for storing data received from Photos API array
  List<UsersModel> usersList = [];
  
  Future<List<UsersModel>> getUsersApi()async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(response.body.toString());

    if(response.statusCode == 200) {
      for(Map i in data){
        print(i['name']);
        usersList.add(UsersModel.fromJson(i));
      }
      return usersList;
    }else {
      return usersList;
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complex json Api call'),
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
                  future: getUsersApi(),
                  builder: (context, AsyncSnapshot<List<UsersModel>> snapshot){
                    if(!snapshot.hasData){
                      return CircularProgressIndicator();
                    }else {
                      return ListView.builder(
                          itemCount: usersList.length,
                          itemBuilder: (context, index){
                            return Card(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: [
                                    ReusableRow(title: 'Name', value: snapshot.data![index].name.toString()),
                                    ReusableRow(title: 'User Name', value: snapshot.data![index].username.toString()),
                                    ReusableRow(title: 'Email', value: snapshot.data![index].email.toString()),
                                    ReusableRow(title: 'City', value: snapshot.data![index].address!.city.toString()),


                                  ],
                                ),
                              ),
                            );
                          });
                    }
                  }),
          ),
        ],
      ),
    );
  }
}

class ReusableRow extends StatelessWidget {
  String title, value;
  ReusableRow({Key? key, required this.title, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value),
        ],
      ),
    );
    ;
  }
}
