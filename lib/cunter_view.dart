import 'package:flutter/material.dart';
import 'package:flutter_application_cubit/cubit/counter_cubit.dart';
import 'package:flutter_application_cubit/cubit/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class counter_view extends StatelessWidget {
  const counter_view({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterCubit(),
        child: BlocBuilder<CounterCubit, CounterStates>(
          builder: (context, state) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(context.read<CounterCubit>().counter.toString()),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              context.read<CounterCubit>().remove();
                            },
                            icon: const Icon(Icons.remove)),
                        IconButton(
                            onPressed: () {
                              context.read<CounterCubit>().add();
                            },
                            icon: const Icon(Icons.add))
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
