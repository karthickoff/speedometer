import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speedometer/bloc/rotate_bloc.dart';
import 'package:speedometer/home_page.dart';
import 'package:speedometer/speedometercheck.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider<RotateBloc>(
        create: (BuildContext context) => RotateBloc(),
        child: HomePage(),
      ),
    );
  }
}
