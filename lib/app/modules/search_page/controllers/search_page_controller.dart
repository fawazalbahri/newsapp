import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/app/modules/search_page/providers/search_provider.dart';
import 'package:news/models/articles_model.dart';

class SearchPageController extends GetxController with StateMixin<List<Article>>{
  final SearchProvider _searchProvider =SearchProvider();
  var searchController =TextEditingController();


  getArticleSea(String value){
    _searchProvider.getArticleSer(value).then((value) {
      change(value,status: RxStatus.success());
    },onError: (error){
      Get.snackbar(error.toString(),error.toString());
    }).catchError((error){
      Get.snackbar(error.toString(),error.toString());
    });

  }

  @override
  void onInit()
  {
    change([], status: RxStatus.success());
    super.onInit();

  }


}

