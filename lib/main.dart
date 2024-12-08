import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:metro_uio/src/presentation/screens/home/home_screen.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue[900],
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            padding: const EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        dropdownMenuTheme: DropdownMenuThemeData(
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
            fillColor: Colors.white,
            filled: true,
          ),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    ),
  );
}
