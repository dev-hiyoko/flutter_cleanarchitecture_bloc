import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cleanarchitecture_bloc/app.dart';
import 'package:flutter_cleanarchitecture_bloc/domain/repositories/theme_repository_impl.dart';
import 'package:flutter_cleanarchitecture_bloc/presentation/bloc/theme/theme_bloc.dart';
import 'package:flutter_cleanarchitecture_bloc/presentation/bloc/counter/counter_bloc.dart';
import 'package:flutter_cleanarchitecture_bloc/domain/repositories/counter_repository_impl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(CounterRepositoryImpl()),
        ),
        BlocProvider<ThemeBloc>(
          create: (context) => ThemeBloc(ThemeRepositoryImpl()),
        ),
      ],
      child: AppView(),
    );
  }
}
