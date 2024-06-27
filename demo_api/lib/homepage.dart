import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

final dio = Dio();

const baseUrl = 'https://catfact.ninja/fact';

String apiData = '';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> { 

  //write any functions here .
  @override
  void initState() {
    getApiData();
    super.initState();
  }

  void getApiData () async {
    final response = await dio.get(baseUrl);
    print(response);

setState(() {
      apiData = response.data['fact'];

});    


  }


  //app UI part 

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [


        SizedBox(height: 100),
        Text('CatFact '+apiData),


    ],),);
  }
}