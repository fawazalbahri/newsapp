import 'package:get/get.dart';
import 'package:news/helper/api_client.dart';
import 'package:news/helper/constants.dart';
import 'package:news/models/articles_model.dart';

class HomeProvider extends GetConnect{
  ApiClient apiClient=Get.find();

  Future<List<Article>>getArticles()async{
    Response response=await apiClient.getData(endPoint: Constants.endPoint);
    print(response.request?.url);
    print(response.body);
    if(response.status.hasError){
      return Future.error(response.body['message']);
    }
    return ArticlesModel.fromJson(response.body).articles;
  }
}