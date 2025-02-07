import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_cleanarchitecture_bloc/presentation/bloc/counter_bloc.dart';
import 'package:flutter_cleanarchitecture_bloc/presentation/bloc/counter_event.dart';
import 'package:flutter_cleanarchitecture_bloc/presentation/bloc/counter_state.dart';
import 'package:flutter_cleanarchitecture_bloc/presentation/widgets/button/add.dart';
import 'package:flutter_cleanarchitecture_bloc/presentation/widgets/button/remove.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(AppLocalizations.of(context).title),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            if (state is CounterInitial) {
              return Text(
                  AppLocalizations.of(context).hello("count", 0),
                  style: TextStyle(fontSize: 24));
            } else if (state is CounterValue) {
              return Text(
                AppLocalizations.of(context).hello("count", state.value),
                style: TextStyle(fontSize: 24));
            }
            return Container();
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          RemoveButton(onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(DecrementCounterEvent());
          },),
          SizedBox(width: 10),
          AddButton(onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(IncrementCounterEvent());
          },),
        ],
      ),
    );
  }
}