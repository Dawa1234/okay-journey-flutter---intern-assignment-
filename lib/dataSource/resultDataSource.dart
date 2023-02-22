import 'package:dio/dio.dart';
import 'package:intern_assignment/connection/apiConnection.dart';
import 'package:intern_assignment/dataSource/response/resultResponse.dart';
import 'package:intern_assignment/model/results/result.dart';
import 'package:intern_assignment/static/app.dart';

class ResultDataSource {
  final Dio _httpServices = HttpServices().getInstance();

  Future<List<Results>> getResults() async {
    try {
      Response response = await _httpServices.get("https://randomuser.me/api/");
      if (response.statusCode == 200) {
        DataResponse dataResponse = DataResponse.fromJson(response.data);
        Constant.info = dataResponse.info;
        return dataResponse.results!;
      }
      return [];
    } catch (e) {
      print(e);
      return [];
    }
  }
}
