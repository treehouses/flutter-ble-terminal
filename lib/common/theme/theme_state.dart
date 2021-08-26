part of 'theme_cubit.dart';

abstract class ThemeState extends Equatable {
  const ThemeState({required this.themeMode});
  final ThemeMode themeMode;

  @override
  List<Object> get props => [];
}

class ThemeInitial extends ThemeState {
  final ThemeMode themeMode;
  const ThemeInitial({required this.themeMode}) : super(themeMode: themeMode);

  @override
  List<Object> get props => [themeMode];
}

class ThemeChanged extends ThemeState {
  final ThemeMode themeMode;
  const ThemeChanged({required this.themeMode}) : super(themeMode: themeMode);

  @override
  List<Object> get props => [themeMode];
}
