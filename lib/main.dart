import 'package:flutter/material.dart';
import 'package:rickandmorty/common/app_colors.dart';
import 'package:rickandmorty/feature/presentation/bloc/person_list_cubit/person_list_cubit.dart';
import 'package:rickandmorty/feature/presentation/block/search_bloc/search_bloc.dart';
import 'package:rickandmorty/feature/presentation/pages/person_screen.dart';
import 'package:rickandmorty/locator_service.dart' as di;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmorty/locator_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PersonListCubit>(
            create: (context) => sl<PersonListCubit>()..loadPerson()),
        BlocProvider<PersonSearchBloc>(
            create: (context) => sl<PersonSearchBloc>()),
      ],
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          backgroundColor: AppColors.mainBackground,
          scaffoldBackgroundColor: AppColors.mainBackground,
        ),
        home: HomePage(),
      ),
    );
  }
}
