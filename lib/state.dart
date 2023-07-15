import 'package:equatable/equatable.dart';

import '../ArticleModel.dart';

abstract class ArticleState extends Equatable{}
class ArticleLoadingState extends ArticleState{
  @override

  List<Object?> get props =>[];


}
class AtricleLoadedState extends ArticleState{
  late List<ArticleModel> articles;
  AtricleLoadedState(this.articles);
  @override
  // TODO: implement props
  List<Object?> get props => [articles];

  
}
///error state
class AtricleErrorState extends ArticleState{
  final String textError;
  AtricleErrorState(this.textError);
  @override
  // TODO: implement props
  List<Object?> get props => [textError];

  
}