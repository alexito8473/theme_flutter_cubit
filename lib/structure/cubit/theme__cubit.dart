import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

part 'theme__state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState.initial());
  void changeTheme() {
    emit(state.copyWith(appTheme: AppTheme.change(state.appTheme)));
  }
}
