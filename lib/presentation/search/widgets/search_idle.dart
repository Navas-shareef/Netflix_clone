import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixapp/application/search/search_bloc.dart';
import 'package:netflixapp/core/colors.dart';
import 'package:netflixapp/core/constant.dart';
import 'package:netflixapp/presentation/search/widgets/title.dart';

class SearchIdles extends StatelessWidget {
  const SearchIdles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTile(
          title: 'Top Searches',
        ),
        khieght,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('error occured'),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text('list is empty'),
                );
              }
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) => TopSearchItemTile(
                        title: state.idleList[index].title ?? 'No Title',
                        imageURL: imageAppendUrl +
                            state.idleList[index].posterPath.toString(),
                      ),
                  separatorBuilder: (ctx, index) => const SizedBox(
                        height: 15,
                      ),
                  itemCount: state.idleList.length);
            },
          ),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  TopSearchItemTile({Key? key, required this.title, required this.imageURL})
      : super(key: key);
  String title;
  String imageURL;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.3,
          height: 70,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(imageURL), fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
            child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        )),
        const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 23,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black,
            child: Icon(
              CupertinoIcons.play_fill,
              color: kWhiteColor,
            ),
          ),
        )
      ],
    );
  }
}
