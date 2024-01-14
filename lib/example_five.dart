import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'models/ProductsModel.dart';

// Example #5
// Building List with complex very json data
// Scenario: json response encapsulated in {} containing further objects

// Platform to build fake APIs: webhook.site
// jsonviewer.stack.hu -> website to check json data structure

class ExampleFive extends StatefulWidget {
  const ExampleFive({Key? key}) : super(key: key);

  @override
  State<ExampleFive> createState() => _ExampleFiveState();
}

class _ExampleFiveState extends State<ExampleFive> {

  Future<ProductsModel> getProductsApi()async {
    final response = await http.get(Uri.parse('https://webhook.site/1744c78b-c51c-4b9c-8e40-e3e46357526e'));
    var data = jsonDecode(response.body.toString());

    if(response.statusCode == 200){
      return ProductsModel.fromJson(data);
    }else {
      return ProductsModel.fromJson(data);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complex Very Json Data'),
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder<ProductsModel>(
                  future: getProductsApi(),
                  builder: (context, snapshot){
                    if(!snapshot.hasData){
                      return Text('Waiting.....');
                    }else {
                      return ListView.builder(
                          itemCount: snapshot.data!.data!.length,
                          itemBuilder: (context, index){
                            return Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                    title: Text(snapshot.data!.data![index].shop!.name.toString()),
                                    subtitle: Text(snapshot.data!.data![index].shop!.description.toString()),
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage(snapshot.data!.data![index].shop!.image.toString()),
                                    ),
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height*.3,
                                    width: MediaQuery.of(context).size.width*1,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: snapshot.data!.data![index].images!.length,
                                        itemBuilder: (context, position){
                                      return Padding(
                                        padding: const EdgeInsets.only(right: 10),
                                        child: Container(
                                          height: MediaQuery.of(context).size.height*.25,
                                          width: MediaQuery.of(context).size.width*.5,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(snapshot.data!.data![index].images![position].url.toString()),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                  Icon(snapshot.data!.data![index].inWishlist! == true ? Icons.favorite : Icons.favorite_outline ),
                                ],
                              ),
                            );
                          }
                      );
                    }

                  }
              ),
          ),
        ],
      ),
    );
  }
}
