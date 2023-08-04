import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:video_11/Model/ProductsModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<ProductsModel> getProducts()async
  {
    final response=await http.get(Uri.parse('https://webhook.site/23aa0829-94c5-4fc2-8d7d-5ee00724c6b3'));
    var data=jsonDecode(response.body.toString());
    if(response.statusCode==200)
    {


      return ProductsModel.fromJson(data);
    }
    else
    {

      return ProductsModel.fromJson(data);

    }
    
    
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Video 11"),
      ),
      body: Column(
        children: [
          Expanded(child: FutureBuilder<ProductsModel>(
              future: getProducts(),
              builder: (context,snapshot)
          {
            if(snapshot.hasData){

              return ListView.builder(
                  itemCount: snapshot.data!.products!.length,

                  itemBuilder: (context,index)
                  {

                    return Column(
                      children: [

                        SizedBox(height: 10,),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height:200,
                            width: 300,


                            child: ListView.builder(
                                itemCount: snapshot.data!.products![index].reviews!.length,
                                itemBuilder: (context,review)
                            {

                              return Card(


                                child: Column(
                                  children: [
                                    Text(snapshot.data!.products![index].reviews![review].rating.toString()),
                                    SizedBox(height: 10,),
                                    Text(snapshot.data!.products![index].reviews![review].id.toString()),
                                    SizedBox(height: 10,),
                                    Text(snapshot.data!.products![index].reviews![review].comment.toString()),
                                    SizedBox(height: 10,),





                                  ],
                                ),
                              ) ;






                            }
                            ),
                          ),
                        ),
                      ],
                    );




                  }

              );
            }
            else
            {

              return Text("Loading");
            }




          })
          )

        ],
      ),
    );
  }
}
