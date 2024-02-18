import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rian_photo/core/constants/constant.dart';
import 'package:rian_photo/data/model/gallary.dart';
import 'package:rian_photo/domain/repositories/gallery.dart';

part 'photo_gallary_event.dart';
part 'photo_gallary_state.dart';

class PhotoGallaryBloc extends Bloc<PhotoGallaryEvent, PhotoGallaryState> {
  PhotoGallaryBloc() : super(PhotoGallaryInitial(PageState())) {
    on<PhotoGallaryEvent>((event, emit) {


    });

    on<PhotoGetEvent>((event, emit) async {

      print(' PhotoGetEvent');

      emit(GallaryLoadingState(state.pageState));

      GallaryRepository gallaryRepository = GallaryRepository();
      await gallaryRepository
          .getGallary(10)
          .then((value) async {
        if (value.ok) {
          emit(GallaryUpState(state.pageState.copyWith(
            gallary: value,
          )));
          print(value.toString());
        } else {
          emit(GallaryErrorState(state.pageState.copyWith(
            error: 'Ошибка загрузки погоды',
          )));
        }
      });


    });
  }
}
