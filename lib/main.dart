import 'package:alvaro_app/cubid/counter_cubid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(0),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 255, 61, 13)),
          useMaterial3: true,
        ),
        home: const MyCounterPage(),
      ),
    );
  }
}

class MyCounterPage extends StatelessWidget {
  const MyCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CounterCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Counter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Current Counter Value'),
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Text(state.toString());
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              cubit.increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 8,
          ),
          FloatingActionButton(
            onPressed: () {
              cubit.remove();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
