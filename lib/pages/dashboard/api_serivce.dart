import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../models/user.dart';

class ApiService{
  Future<List<Users>> fetchUsers() async{
    final response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    if (response.statusCode==200)
      {
        final List<dynamic> jsonData=json.decode(response.body);

        return jsonData.map((item)=>Users.fromJson(item)).toList();

      }else{
      throw Exception('failed to load the data');
    }
  }


}