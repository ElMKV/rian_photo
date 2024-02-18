part of 'photo_gallary_bloc.dart';

@immutable
abstract class PhotoGallaryEvent {}


class PhotoGetEvent extends PhotoGallaryEvent {
  PhotoGetEvent();
}