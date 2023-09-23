// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_onboarding/data/local/dao/isar_service.dart' as _i5;
import 'package:flutter_onboarding/data/local/dao/post_dao.dart' as _i6;
import 'package:flutter_onboarding/data/remote/repository/post_api_client.dart'
    as _i8;
import 'package:flutter_onboarding/di/service_module.dart' as _i12;
import 'package:flutter_onboarding/domain/mapper.dart' as _i7;
import 'package:flutter_onboarding/domain/repository/post_repository.dart'
    as _i9;
import 'package:flutter_onboarding/domain/use_case/post_use_case.dart' as _i10;
import 'package:flutter_onboarding/presentation/router/app_router.dart' as _i3;
import 'package:flutter_onboarding/presentation/screens/cubit/post_cubit.dart'
    as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final serviceModule = _$ServiceModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.lazySingleton<_i4.Dio>(() => serviceModule.dio);
    gh.lazySingleton<_i5.IsarService>(() => _i5.IsarService());
    gh.lazySingleton<_i6.PostDao>(
        () => _i6.PostDao(isarService: gh<_i5.IsarService>()),);
    gh.factory<_i7.PostEntityMapper>(() => _i7.PostEntityMapper());
    gh.factory<_i8.PostApiClient>(() => _i8.DioPostRepository(
          mapper: gh<_i7.PostEntityMapper>(),
          dio: gh<_i4.Dio>(),
        ),);
    gh.lazySingleton<_i9.PostRepository>(() => _i9.PostRepositoryImpl(
          postApiClient: gh<_i8.PostApiClient>(),
          postDao: gh<_i6.PostDao>(),
        ),);
    gh.lazySingleton<_i10.PostUseCase>(
        () => _i10.PostUseCase(postRepository: gh<_i9.PostRepository>()),);
    gh.factory<_i11.PostCubit>(
        () => _i11.PostCubit(postUseCase: gh<_i10.PostUseCase>()),);
    return this;
  }
}

class _$ServiceModule extends _i12.ServiceModule {}
