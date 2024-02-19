import 'package:flutter/material.dart';
import 'package:rian_photo/pages/photo_gallary_page/bloc/photo_gallary_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhotoGalary extends StatelessWidget {
  const PhotoGalary({super.key, required this.scrollController});


  final ScrollController scrollController;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: BlocProvider(
          create: (context) => PhotoGallaryBloc()..add(PhotoGetEvent()),
          child: BlocConsumer<PhotoGallaryBloc, PhotoGallaryState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              print(state);
              if (state is GallaryLoadingState) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is GallaryErrorState) {
                return Center(
                    child: Text(
                  state.pageState.error,
                  style: TextStyle(color: Colors.white),
                ));
              } else if (state is PhotoGallaryInitial) {
                return const SizedBox();
              }
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // number of items in each row
                  mainAxisSpacing: 8.0, // spacing between rows
                  crossAxisSpacing: 8.0, // spacing between columns
                ),
                padding: EdgeInsets.all(8.0), // padding around the grid
                itemCount: state.pageState.gallary.result.items.length, // total number of items
                itemBuilder: (context, index) {
                  return Image.network(
                    state.pageState.gallary.result.items[index].variants.last.url,
                    fit: BoxFit.fill,
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                  );
                },
              );
            },
          )),
    );
  }
}
