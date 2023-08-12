import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news/app/modules/home/views/components/news_item.dart';

import '../controllers/search_page_controller.dart';

class SearchPageView extends GetView<SearchPageController> {
  const SearchPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f1544),
      appBar: AppBar(
        backgroundColor: Color(0xff1f1544),
      ),
      body: controller.obx(
            (data) =>
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'search frome any news ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 19.0,
                  ),

                  TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff30205f),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(-1.0),
                  borderSide: BorderSide.none,
                  ),
                  hintText: "eg: The Dark Knight",
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Colors.purple.shade800,
                  ),
                    onChanged: (value){
                    controller.getArticleSea(value);
                    },
                    controller:controller.searchController,
                  ),
                  SizedBox(
                    height: 19.0,
                  ),
                  Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) =>
                              NewsItem(article: data[index]),
                          separatorBuilder: (context, index) =>
                              Padding(
                                padding: EdgeInsetsDirectional.only(
                                  start: 19.0,
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 0.0,
                                  color: Colors.brown,
                                ),
                              ),
                          itemCount: data!.length)),
                ],
              ),
            ),
      ),
    );
  }
}
