import 'package:clean_code_with_retrofit/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class TrendingMoviesList extends StatefulWidget {
  const TrendingMoviesList({
    super.key,
  });

  @override
  State<TrendingMoviesList> createState() => _TrendingMoviesListState();
}

class _TrendingMoviesListState extends State<TrendingMoviesList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrendingMovieBloc, TrendingMovieState>(
      builder: (context, state) {
        if (state is TrendingMovieLoading) {
          return ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Column(
                children: [
                  Container(
                    width: 150,
                    height: 250,
                    margin: const EdgeInsets.only(left: 20),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Container(
                    width: 150,
                    height: 12,
                    margin: const EdgeInsets.only(left: 20),
                    color: Colors.white,
                  ),
                  const SizedBox(height: 8.0),
                  Container(
                    width: 150,
                    height: 12,
                    margin: const EdgeInsets.only(left: 20),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          );
        }

        if (state is TrendingMovieError) {
          return Text(state.error.toString());
        }

        if (state is TrendingMovieLoaded) {
          return ListView.builder(
            itemCount: state.trendingMovieList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) =>
                MovieTile(movie: state.trendingMovieList[index])),
          );
        }

        return const Center(
          child: Text('No movies found'),
        );
      },
    );
  }
}
