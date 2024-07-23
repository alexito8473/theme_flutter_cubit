import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_flutter_cubit/structure/cubit/theme__cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            BlocProvider.of<ThemeCubit>(context).changeTheme();
          }, child: const Text("Change theme app with bloc"),
        ),
      ),
    );
  }
}
