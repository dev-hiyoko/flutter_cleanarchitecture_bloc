import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cleanarchitecture_bloc/presentation/bloc/theme/theme_bloc.dart';
import 'package:flutter_cleanarchitecture_bloc/presentation/pages/counter_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = context.watch<ThemeBloc>().state.value;

    return MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(primary: Colors.deepPurple),
        useMaterial3: true,
      ),
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      themeMode: theme,

      // localization
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      // bloc
      home: const CounterPage(),
    );
  }
}
