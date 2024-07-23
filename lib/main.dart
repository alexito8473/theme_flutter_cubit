import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_flutter_cubit/screens/home_screen.dart';
import 'package:theme_flutter_cubit/structure/cubit/theme__cubit.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
        create: (context) => ThemeCubit(),
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return MaterialApp(
              title: 'Ejemplo',
              theme: state.appTheme == AppTheme.LIGHT
                  ? ThemeData.light()
                  : ThemeData.dark(),
              home: const HomeScreen(),
            );
          },
        ));
  }
}
