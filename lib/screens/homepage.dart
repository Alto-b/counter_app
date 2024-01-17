import 'package:counter_app/logic/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

 int counterValue = 0;

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("cubit counter"),
            centerTitle: true,
          ),
          body:   Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  state.counterValue.toString()
                  ,style: const TextStyle(fontSize: 280),)
              ],
            ),
          ),
    
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: (){
                  context.read<CounterCubit>().increment();
                },
                child: const Icon(Icons.add),),
    
              const SizedBox(width: 20,),
    
              FloatingActionButton(
                onPressed: (){
                  context.read<CounterCubit>().decrement();
                },
                child: const Icon(Icons.remove),),
            ],
          ),
        );
      },
    );
  }
}