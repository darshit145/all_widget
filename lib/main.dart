import 'package:get/get.dart';
import 'package:all_widgets/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        // useMaterial3: true,
        shadowColor: Colors.red,
        appBarTheme: AppBarTheme(
          color: Colors.blueGrey,
          shadowColor: Colors.red,
          elevation: 2,
          iconTheme:const IconThemeData(
            color: Colors.white,
          ),
          // backgroundColor: Colors.white,
            scrolledUnderElevation: 12,
          centerTitle: true,
          shape: OutlineInputBorder(
              borderRadius:BorderRadius.circular(13),
          )
        ),
        scaffoldBackgroundColor: Colors.blueGrey.shade200,
        buttonTheme: const ButtonThemeData(
          focusColor: Colors.red,
          buttonColor: Colors.blueGrey,
          alignedDropdown: true,
        ),
        focusColor: Colors.blueGrey,
        primarySwatch: Colors.brown,


      ),
      darkTheme: ThemeData(

        shadowColor: Colors.purpleAccent.shade100,
        appBarTheme: AppBarTheme(
            color: Colors.deepPurple.shade300,
            shadowColor: Colors.black,
            elevation: 2,
            iconTheme:const IconThemeData(
              color: Colors.black,
            ),
            // backgroundColor: Colors.white,
            scrolledUnderElevation: 12,
            centerTitle: true,
            shape: OutlineInputBorder(
              borderRadius:BorderRadius.circular(13),
            )
        ),
        scaffoldBackgroundColor: Colors.deepPurple.shade100,
        buttonTheme: const ButtonThemeData(
          focusColor: Colors.red,
          buttonColor: Colors.blueGrey,
          alignedDropdown: true,
        ),
        focusColor: Colors.blueGrey,
        primarySwatch: Colors.brown,




      ),



      home: splash_screen(),
    );
  }
}
/*
* theme: ThemeData(
        textTheme: TextTheme(
          displayLarge: TextStyle(color: Colors.red,fontSize: 56)
        ),
        // colorSchemeSeed: Colors.red,
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.blueGrey.shade100,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          color: Colors.blueGrey,
          centerTitle: true,
          shadowColor: Colors.black,
          elevation: 12,

        ),
      ),
        darkTheme: ThemeData(
          textTheme: TextTheme(
            displayLarge: TextStyle(color: Colors.white)
          ),
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: Colors.greenAccent,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          color: Colors.deepOrangeAccent,
          centerTitle: true,
          shadowColor: Colors.green,
          elevation: 12,


        ),),*/