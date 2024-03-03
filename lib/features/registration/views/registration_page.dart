import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:task38/features/registration/bloc/bloc/registration_bloc.dart';
import 'package:task38/router/app_router.dart';

@RoutePage()
class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _passwordField = TextEditingController();
  final _passwordAgainField = TextEditingController();
  final _emailField = TextEditingController();
  final _registrationBloc = GetIt.I.get<RegistrationBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
        centerTitle: true,
      ),
      body: BlocListener<RegistrationBloc, RegistrationState>(
        bloc: _registrationBloc,
        listener: (context, state) {
          state.map(
            initial: (_) {},
            registration: (_) {},
            failure: (event) =>
                sendFailureMessage(context, event.error.toString()),
            registered: (event) {
              AutoRouter.of(context).push(const AuthRoute());
            },
          );
        },
        child: SingleChildScrollView(
          reverse: true,
          child: Center(
            child: Column(
              children: [
                BlocBuilder<RegistrationBloc, RegistrationState>(
                  bloc: _registrationBloc,
                  builder: (context, state) {
                    return state.maybeMap(
                        registration: (_) {
                          return const Column(children: [
                            SizedBox(height: 10),
                            CircularProgressIndicator()
                          ]);
                        },
                        orElse: () => const SizedBox());
                  },
                ),
                const SizedBox(height: 100),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    controller: _emailField,
                    style: Theme.of(context).textTheme.titleMedium,
                    decoration: const InputDecoration(
                      helperText: 'Введите email',
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    controller: _passwordField,
                    obscureText: true,
                    style: Theme.of(context).textTheme.titleMedium,
                    decoration: const InputDecoration(
                      helperText: 'Введите пароль',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    controller: _passwordAgainField,
                    obscureText: true,
                    style: Theme.of(context).textTheme.titleMedium,
                    decoration: const InputDecoration(
                      helperText: 'Повторите пароль',
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                FilledButton(
                  onPressed: () {
                    _registerBtnPressed(
                      context,
                      _emailField.text,
                      _passwordField.text,
                      _passwordAgainField.text,
                    );
                  },
                  style: ButtonStyle(
                    fixedSize: const MaterialStatePropertyAll(
                      Size(250, 50),
                    ),
                    textStyle: MaterialStatePropertyAll(
                        Theme.of(context).textTheme.titleMedium),
                  ),
                  child: const Text('Зарегистрироваться'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void sendFailureMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(milliseconds: 1500),
        content: Center(child: Text(message)),
      ),
    );
  }

  void _registerBtnPressed(
    BuildContext context,
    String email,
    String firstPassword,
    String secondPassword,
  ) {
    if (firstPassword != secondPassword) {
      sendFailureMessage(context, 'Пароли не совпадают');
      return;
    }
    _registrationBloc
        .add(RegistrationEvent.register(email: email, password: firstPassword));
  }
}
