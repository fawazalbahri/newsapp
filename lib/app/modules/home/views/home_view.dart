import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news/app/modules/home/views/components/news_item.dart';
import 'package:news/app/modules/search_page/views/search_page_view.dart';
import 'package:news/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

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
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        ' شاهد جميع اخبار اليوم ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 160.0,
                      ),
                      IconButton(onPressed:(){
                        Get.toNamed(Routes.SEARCH_PAGE);
                      }, icon:Icon(
                        Icons.search,
                      ),),
                    ],
                  ),
                  //TextField(
                    //style: TextStyle(color: Colors.white),
                    //decoration: InputDecoration(
                      //filled: true,
                      //fillColor: Color(0xff30205f),
                      //border: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(-1.0),
                        //borderSide: BorderSide.none,
                      //),
                      //hintText: "eg: The Dark Knight",
                      //prefixIcon: Icon(Icons.search),
                      //prefixIconColor: Colors.purple.shade800,
                    //),
                  //),
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

