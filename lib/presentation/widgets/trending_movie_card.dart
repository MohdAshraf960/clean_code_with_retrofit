import 'package:clean_code_with_retrofit/config/config.dart';
import 'package:clean_code_with_retrofit/domain/domain.dart';
import 'package:flutter/material.dart';

class MovieTile extends StatelessWidget {
  final MovieEntity movie;
  const MovieTile({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            const SizedBox(
              // height: 270,
              width: 180,
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
              child: Image.network(
                '${ApiConstants.baseImageUrl}${movie.posterPath}',
                width: 150,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 25,
              bottom: 0,
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                constraints: const BoxConstraints(
                  minWidth: 36,
                  minHeight: 36,
                ),
                child: Text(
                  '${(movie.voteAverage * 10).ceil()}%',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 150,
          child: Text(movie.originalTitle),
        ),
        const SizedBox(
          width: 150,
          child: Text("Jun 21 2023"),
        )
      ],
    );
  }
}
