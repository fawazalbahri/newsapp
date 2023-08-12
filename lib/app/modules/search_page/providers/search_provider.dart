import 'package:get/get.dart';
import 'package:news/helper/api_client.dart';
import 'package:news/helper/constants.dart';
import 'package:news/models/articles_model.dart';

class SearchProvider extends GetConnect{
  ApiClient apiClient=Get.find();
  Future<List<Article>>getArticleSer(String value)async{
    Response response= await apiClient.getData(endPoint:'${Constants.seaPoint}$value${Constants.search}');
    print(response.body);
    if(response.status.hasError){
      return Future.error(response.body['message']);
    }
    return ArticlesModel.fromJson(response.body).articles;
  }
}