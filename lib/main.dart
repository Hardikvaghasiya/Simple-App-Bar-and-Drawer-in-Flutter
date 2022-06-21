// ignore_for_file: prefer_const_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/logo.png',
      splashIconSize: 200,
      backgroundColor: Colors.pink,
      nextScreen: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('App Bar',),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:30.0),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 30,),),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          
          child: Center(child: Text('Hardik Vaghasiya',style: TextStyle(fontSize: 20),)),
        ),
      ),
      body: Container(
        child: Center(child: Text('Welcome To Flutter App',style: TextStyle(fontSize: 20),)),
      ),
    );
  }
}
