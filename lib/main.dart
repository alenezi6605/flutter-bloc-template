import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_template/data/repositories/user_repository.dart';
import 'package:flutter_bloc_template/presentation/screens/users_screen.dart';

void main() {
  runApp(const BlocTemplate());
}

class BlocTemplate extends StatelessWidget {
  const BlocTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter BLoC Template',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: RepositoryProvider(
            create: (context) => UserRepository(), child: const UsersScreen()));
  }
}
