import 'package:get/get.dart';
import 'package:news/app/modules/home/providers/home_provider.dart';
import 'package:news/models/articles_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeController extends GetxController with StateMixin<List<Article>> {
  final HomeProvider _homeProvider=HomeProvider();
  late final WebViewController controller;
  var url;

  getArticles(){
    _homeProvider.getArticles().then((value){
      change(value,status: RxStatus.success());
    },onError: (error){
      Get.snackbar(error.toString(),error.toString());
    }).catchError((error){
      Get.snackbar(error.toString(),error.toString());
    },
    );
  }


  @override
  void onInit() {
    getArticles();
    super.onInit();
  }
}