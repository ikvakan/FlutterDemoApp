
import 'package:flutter_onboarding/data/remote/model/response_remote_dto.dart';
import 'package:flutter_onboarding/domain/model/post_entity.dart';
import 'package:injectable/injectable.dart';

abstract class Mapper<DtoModel, DomainEntity> {
  List<DomainEntity> toEntityList(DtoModel dto);
}
@injectable
class PostEntityMapper implements Mapper<ResponseRemoteDTO, PostEntity> {
  @override
  List<PostEntity> toEntityList(ResponseRemoteDTO dto) {
    final posts = dto.posts
        .map(
          (e) => PostEntity(
            id: e.id,
            title: dto.blog?.title ?? "",
            summary: e.summary ?? "",
            imageUrl: e.photos.first.image?.url ?? "",
          ),
        )
        .toList();
    return posts;
  }
}
