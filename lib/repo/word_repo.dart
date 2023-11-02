import 'dart:io';

import 'package:dictionary_app/model/word_response.dart';
import 'package:dictionary_app/service/http_service.dart';

class WordRepository {

Future<List<WordResponse>?> getWordsFromDictionary(String query) async {

  try {
  final response = await HttpService.getRequest("en_US/$query");
  
  
  
  if(response.statusCode == 200) {
   final result = welcomeFromJson(response.body);
  
   return   result;
  } else {
  
    return null;
  }
} on SocketException catch (e) {

rethrow;

} on HttpException catch (e) {
  rethrow;
} on FormatException catch (e) {


  rethrow;
}



}


}