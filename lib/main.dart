import 'package:bloc_project/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RepositoryProvider(create:(context) => Repository(),
      child: const Scaffold(body: HomeScrean(),),
      ),
      
    );
  }
}


