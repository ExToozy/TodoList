import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:task38/main_app/bloc/main_app_user_auth_bloc.dart';
import 'package:task38/router/app_router.dart';

@RoutePage()
class HelloPage extends StatefulWidget {
  const HelloPage({super.key});

  @override
  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  final MainAppUserAuthBloc _mainAppUserAuthBloc =
      GetIt.I.get<MainAppUserAuthBloc>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text('Добро пожаловать!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<MainAppUserAuthBloc, MainAppUserAuthState>(
              bloc: _mainAppUserAuthBloc,
              builder: (context, state) => state.maybeMap(
                userAuthorized: (value) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        '🎉 Приветствуем вас , ${value.user.email}, в нашем приложении для эффективного управления задачами. Здесь вы сможете легко создавать, отслеживать и завершать свои задачи, чтобы быть более продуктивным!',
                        style: Theme.of(context).textTheme.titleMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                orElse: () => const SizedBox(),
              ),
            ),
            TextButton(
              onPressed: () {
                AutoRouter.of(context).push(const TodoListRoute());
              },
              child: const Text('Приступить!'),
            ),
          ],
        ),
      ),
    );
  }
}
