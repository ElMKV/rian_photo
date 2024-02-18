part of 'photo_gallary_bloc.dart';

@immutable
abstract class PhotoGallaryState {
  final PageState pageState;

  const PhotoGallaryState(this.pageState);

}

class PhotoGallaryInitial extends PhotoGallaryState {
  const PhotoGallaryInitial(PageState pageState) : super(pageState);

}

class GallaryLoadingState extends PhotoGallaryState {
  const GallaryLoadingState(PageState pageState) : super(pageState);

}

class GallaryUpState extends PhotoGallaryState {
  const GallaryUpState(PageState pageState) : super(pageState);

}

class GallaryErrorState extends PhotoGallaryState {
  const GallaryErrorState(PageState pageState) : super(pageState);

}


class PageState {
  bool onAwait;
  String error;
  Main gallary;


  PageState({
    this.onAwait = false,
    this.error = '',
    this.gallary = const Main(),

  });

  PageState copyWith({
    bool? onAwait,
    String? error,
    Main?  gallary,

  }) {
    return PageState(
      onAwait: onAwait ?? this.onAwait,
      error: error ?? this.error,
      gallary: gallary ?? this.gallary,

    );
  }
}
