import 'package:get/get.dart';
import 'package:get/get_connect/connect.dart';

class ApiClient extends GetConnect implements GetxService{
  static String token = '';
  final String appBaseUrl;
  late Map<String,String>_headers;

  ApiClient({required this.appBaseUrl}){
    baseUrl = appBaseUrl;
    timeout = const Duration(seconds: 60);
    _headers = {
      'Authorization': 'Bearer $token',};
  }
  Future<Response>getData({required String endPoint})async{
    try{
      _headers={
        'Authorization': 'Bearer $token',
      };
      Response response = await get(endPoint, headers: _headers,).timeout(timeout, onTimeout:(){
        // showIconMessage(title:'يرجى المحاولة مرة اخري',dialoType:DialogType.error);
        return const Response(statusText: 'Time out', statusCode: 2);
      });
      return response;
    }catch(error){
      return Response(statusText: error.toString(),statusCode: 1);
    }
  }
}

