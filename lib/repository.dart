
import 'package:bloc_project/ArticleModel.dart';
import 'package:dio/dio.dart';

class Repository{
  String Url="https://techblog.sasansafari.com/Techblog/api/article/get.php?command=new";
  //sakht list darkhast
  Future <List<ArticleModel>> getArticle() async{
    List<ArticleModel> list=[];
    await Dio().get(Url).then((value) {
      if(value.statusCode==200){
        for (var element in value.data) {
          list.add(ArticleModel.fromJson(element));
        }
      }
    });
    return list;

  }
}