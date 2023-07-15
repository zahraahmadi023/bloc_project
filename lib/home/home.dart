import 'package:bloc_project/bloc.dart';
import 'package:bloc_project/event.dart';
import 'package:bloc_project/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repository.dart';

class HomeScrean extends StatefulWidget {
  const HomeScrean({super.key});

  @override
  State<HomeScrean> get createState => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  @override
  Widget build(BuildContext context) {
    Repository _repository=RepositoryProvider.of<Repository>(context);
    return  BlocProvider(
      create:(context) =>
    ArticleBloc(_repository)..add(LoadArticleEvent(),),
    child: Scaffold(
      body: BlocBuilder<ArticleBloc,ArticleState>(builder: (context, state) {
        return Center(child:Text("data"));
        
      },),
    ),
    );
  }
}