import 'package:get/get.dart';
import 'package:news/helper/constants.dart';

import 'helper/api_client.dart';

class MyBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(ApiClient(appBaseUrl: Constants.baseUrl));
  }

}