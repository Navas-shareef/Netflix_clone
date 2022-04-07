import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixapp/application/search/search_bloc.dart';
import 'package:netflixapp/core/constant.dart';
import 'package:netflixapp/presentation/search/widgets/title.dart';

class SearchResultTile extends StatelessWidget {
  const SearchResultTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTile(title: 'Movies & TV'),
        khieght,
        Expanded(child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.8 / 1,
              children: List.generate(
                  state.searchResultList.length,
                  (index) => MainCard(
                        imageURL: state.searchResultList[index].posterPathURL,
                      )),
            );
          },
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  MainCard({Key? key, required this.imageURL}) : super(key: key);
  String imageURL;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: NetworkImage(imageURL), fit: BoxFit.fill),
      ),
    );
  }
}
