import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rian_photo/core/globals/globals.dart';
import 'package:rian_photo/data/api/gallery/gallery_api.dart';
import 'package:rian_photo/data/model/gallary.dart';
import 'package:rian_photo/data/network/dio_exception.dart';


class GallaryRepository {
  Future <Main> getGallary(int limit) async {
    try {
      final response = await GalleryApi.getGalleru(limit);
      return (response?.data != null)
          ? Main.fromJson(response!.data)
          : const Main();

    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      final SnackBar snackBar = SnackBar(content: Text(errorMessage));
      snackbarKey.currentState?.showSnackBar(snackBar);
      return Main();
    }
  }
}


