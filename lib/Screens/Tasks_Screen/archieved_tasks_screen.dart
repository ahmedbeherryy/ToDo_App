import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/Cubit/todo_cubit.dart';
import 'package:todo_app/Cubit/todo_states.dart';
import 'package:todo_app/Widgets/tasks_builder.dart';


class ArchievedTasksScreen extends StatelessWidget {
  const ArchievedTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, toDoStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return tasksBuilder(tasks: AppCubit.get(context).archivedTasks);
      },
    );
  }
}