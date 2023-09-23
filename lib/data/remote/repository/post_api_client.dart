import 'package:dio/dio.dart';
import 'package:flutter_onboarding/constants/api.dart';
import 'package:flutter_onboarding/data/remote/model/tumblr_remote_dto.dart';
import 'package:flutter_onboarding/domain/mapper.dart';
import 'package:flutter_onboarding/domain/model/post_entity.dart';
import 'package:injectable/injectable.dart';

abstract class PostApiClient {
  Future<List<PostEntity>> getPosts({
    int offset,
    int limit,
  });
}

@Injectable(as: PostApiClient)
class DioPostRepository implements PostApiClient {
  final Dio dio;
  final PostEntityMapper mapper;

  final _blogIdentifier = ApiConstants.blogIdentifier;
  final _blogType = ApiConstants.blogType;

  DioPostRepository({
    required this.mapper,
    required this.dio,
  });

  @override
  Future<List<PostEntity>> getPosts({
    int limit = ApiConstants.limit,
    int offset = 0,
  }) async {
    final response = await dio.get(
      "$_blogIdentifier/?type=$_blogType&limit=$limit&offset=${offset * limit}",
      /// for error testing
      //  "$_blogIdentifier/?typ=$_blogType&limit=$limit&api_key=$_apiKey&offset=${offset * limit}",
      // "/?type=$_blogType&limit=$limit&offset=${offset * limit}"
    );
    final data =
        TumblrRemoteDTO.fromJson(response.data as Map<String, dynamic>);
    return mapper.toEntityList(data.response);
  }
}
