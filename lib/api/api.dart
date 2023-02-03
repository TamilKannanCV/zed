import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:zed/models/custom_response/custom_response.dart';

class Api {
  final _api = "https://run.mocky.io/v3/36b43320-2ad7-4c53-8686-0d3ce3d5e582";
  Future<CustomResponse> getData() async {
    try {
      final response = await Dio().get(_api);
      return CustomResponse.fromMap(response.data);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
