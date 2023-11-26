import 'package:flutter/material.dart';
import 'package:stor_app/padgas/home.dart';
import 'package:stor_app/padgas/updata_prodect.dart';

import 'padgas/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id : (context)=>const HomePage(),
        upDataProdectPage.id : (context)=> upDataProdectPage(),
        IntroguctoryLevel.id :(context)=>IntroguctoryLevel(),
      },
      title: 'Stor App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      initialRoute: IntroguctoryLevel.id,
    );
  }
}

