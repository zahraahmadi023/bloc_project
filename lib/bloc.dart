
import 'package:bloc_project/event.dart';
import 'package:bloc_project/repository.dart';
import 'package:bloc_project/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

  class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  late final Repository _repository;
  ArticleBloc(this._repository) : super(ArticleLoadingState()) {
    on<LoadArticleEvent>(
      (event, emit) async {
        emit(ArticleLoadingState());
        try {
          final articles = await _repository.getArticle();
          emit(AtricleLoadedState(articles));
        } catch (e) {
          emit(AtricleErrorState(e.toString()));
          
        }
      },
    );
  }
}
