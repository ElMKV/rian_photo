import 'package:flutter/material.dart';
import 'package:rian_photo/pages/photo_gallary_page/bloc/photo_gallary_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class PhotoGalary extends StatelessWidget {
  const PhotoGalary({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: GridView.builder(
    //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //       crossAxisCount: 3, // number of items in each row
    //       mainAxisSpacing: 8.0, // spacing between rows
    //       crossAxisSpacing: 8.0, // spacing between columns
    //     ),
    //     padding: EdgeInsets.all(8.0), // padding around the grid
    //     itemCount: 40, // total number of items
    //     itemBuilder: (context, index) {
    //       return Container(
    //         color: Colors.blue, // color of grid items
    //         child: Center(
    //           child: FlutterLogo()
    //         ),
    //       );
    //     },
    //   )
    // );

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
              return Text(state.pageState.gallary.ok.toString());
            },
          )),
    );
  }
}
