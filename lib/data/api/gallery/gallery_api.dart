import 'dart:convert';
import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:rian_photo/core/constants/constant.dart';
import 'package:rian_photo/data/model/gallary.dart';

class GalleryApi {
  static Future<Response?> getGalleru(int limit) async {
    var dio = Dio();
    Response? galleru;
    try {
      galleru = await dio.get('${AppConstants.base}/v1/jobEvaluation/images',
          queryParameters: {"limit": limit});
      print('STATUS ${galleru.statusMessage}');
      print('DATA ${galleru.data}');
      return galleru;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
