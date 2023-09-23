import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_onboarding/constants/app_strings.dart';
import 'package:flutter_onboarding/di/injectable.dart';
import 'package:flutter_onboarding/presentation/router/app_router.dart';
import 'package:flutter_onboarding/presentation/screens/cubit/post_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PostCubit>(
      create: (BuildContext context) => getIt<PostCubit>()..init(),
      child: MaterialApp(
        title: AppStrings.appTitle,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: getIt<AppRouter>().generateRoute,
      ),
    );
  }
}
