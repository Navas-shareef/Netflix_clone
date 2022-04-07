import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixapp/application/bloc/fastlaugh_bloc.dart';
import 'package:netflixapp/presentation/fast_laughs/widgets/vedio_list_item.dart';

class ScreenFastLaughs extends StatelessWidget {
  const ScreenFastLaughs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<FastlaughBloc>(context).add(Initial());
    });
    return Scaffold(body: Scaffold(
      body: SafeArea(child: BlocBuilder<FastlaughBloc, FastlaughState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          } else if (state.isError) {
            return const Center(
              child: Text('Error occured'),
            );
          } else if (state.vediosList.isEmpty) {
            return const Center(
              child: Text('vedio List empty'),
            );
          } else {
            return PageView(
              scrollDirection: Axis.vertical,
              children: List.generate(
                  state.vediosList.length,
                  (index) => VedioListInhertedWidget(
                        widget: VedioListItem(
                          key: Key(index.toString()),
                          index: index,
                        ),
                        movieData: state.vediosList[index],
                      )),
            );
          }
        },
      )),
    ));
  }
}
