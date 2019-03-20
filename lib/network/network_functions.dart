import 'dart:_http';
import 'dart:async';
import 'dart:convert';
import 'package:vetwork_test/Model/Connect.dart';
import 'package:http/http.dart' as http;
import 'package:vetwork_test/Model/Check_Versions.dart';
import 'package:vetwork_test/Model/Get_Labels.dart';
import 'package:vetwork_test/Model/Verify_User_Request.dart';
import 'package:vetwork_test/Model/Confirm_User_Token.dart';
import 'package:vetwork_test/Model/Add_New_Address.dart';
import 'package:vetwork_test/setting.dart';
class network_functions {

  ButtonOptions v =new ButtonOptions();
 // v.submitStr;
  Future<Connect> Connected() async {
    final response =
    await http.get('https://jsonplaceholder.typicode.com/posts/1');

    if (response.statusCode == 200) {
      return Connect.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }

  Future<Check_Versions> checkversion() async {
    final response =
    await http.get('https://jsonplaceholder.typicode.com/posts/1');

    if (response.statusCode == 200) {
      return Check_Versions.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }


  Future<Get_Labels> GetLabels() async {
    final response =
    await http.get('https://jsonplaceholder.typicode.com/posts/1');

    if (response.statusCode == 200) {
      return Get_Labels.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }

  Future<Verify_User_Request> VerifyUserRequest(String url, {Map body}) async {
    return http.post(url, body: body).then((http.Response response) {
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
      }
      return Verify_User_Request.fromJson(json.decode(response.body));
    });
  }

  Future<Confirm_User_Token> ConfirmUserToken(String url, {Map body}) async {
    return http.post(url, body: body).then((http.Response response) {
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
      }
      return Confirm_User_Token.fromJson(json.decode(response.body));
    });
  }

  Future<Add_New_Address> AddNewAddress(String url, {Map body}) async {
    return http.post(url, body: body).then((http.Response response) {
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
      }
      return Add_New_Address.fromJson(json.decode(response.body));
    });
  }

  Future<String> DeleteAddress(String url, Map jsonMap) async {
    HttpClient httpClient = new HttpClient();
    httpClient.open('delete', url, 0, '/users');
    httpClient.close();
    return 'Success';
  }

  Future<String> UpdateAddress(String url, Map jsonMap) async {
    HttpClient httpClient = new HttpClient();
    httpClient.open('', url, 0, '/users');
    httpClient.close();
    return 'Success';
  }
}
