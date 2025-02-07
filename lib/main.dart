import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cleanarchitecture_bloc/presentation/bloc/counter_bloc.dart';
import 'package:flutter_cleanarchitecture_bloc/presentation/pages/counter_page.dart';
import 'package:flutter_cleanarchitecture_bloc/domain/repositories/counter_repository_impl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Clean Architecture Counter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => CounterBloc(CounterRepositoryImpl()),
        child: CounterPage(),
      ),
    );
  }
}