import 'package:clean_code_with_retrofit/core/core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/blocs.dart';
import 'trending_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOME"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            trendingMovie(),
          ],
        ),
      ),
    );
  }

  BlocProvider<TrendingMovieBloc> trendingMovie() {
    return BlocProvider(
      create: (context) =>
          getIt<TrendingMovieBloc>()..add(TrendingMovieFetched()),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Trending",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 330,
            width: double.infinity,
            child: TrendingMoviesList(),
          ),
        ],
      ),
    );
  }
}
