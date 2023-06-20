// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_generator

part of 'movie_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieResultModel _$MovieResultModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MovieResultModel',
      json,
      ($checkedConvert) {
        final val = MovieResultModel(
          page: $checkedConvert('page', (v) => v as int?),
          results: $checkedConvert(
              'results',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          totalPages: $checkedConvert('total_pages', (v) => v as int?),
          totalResults: $checkedConvert('total_results', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {
        'totalPages': 'total_pages',
        'totalResults': 'total_results'
      },
    );
