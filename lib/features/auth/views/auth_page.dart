import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:task38/features/auth/bloc/auth_bloc.dart';
import 'package:task38/features/registration/bloc/bloc/registration_bloc.dart';
import 'package:task38/main_app/bloc/main_app_user_auth_bloc.dart';
import 'package:task38/router/app_router.dart';

@RoutePage()
class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _passwordField = TextEditingController();
  final _emailField = TextEditingController();
  final _authBloc = GetIt.I.get<AuthBloc>();
  final _mainAppUserAuthBloc = GetIt.I.get<MainAppUserAuthBloc>();
  final _registrationBloc = GetIt.I.get<RegistrationBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Авторизация'),
        centerTitle: true,
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            bloc: _authBloc,
            listener: (context, state) {
              state.map(
                initial: (_) {},
                authorization: (_) {},
                failure: (st) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: const Duration(milliseconds: 1500),
                      content: Center(child: Text(st.error.toString())),
                    ),
                  );
                },
                authorized: (st) {
                  _mainAppUserAuthBloc
                      .add(MainAppUserAuthEvent.userSignIn(user: st.user));
                  if (st.isNewUser) {
                    AutoRouter.of(context).push(const HelloRoute());
                  } else {
                    AutoRouter.of(context).push(const TodoListRoute());
                  }
                },
              );
            },
          ),
          BlocListener<MainAppUserAuthBloc, MainAppUserAuthState>(
            bloc: _mainAppUserAuthBloc,
            listener: (context, state) {
              state.map(
                initial: (_) {},
                userAuthorized: (_) {},
                userUnauthorized: (_) {
                  _passwordField.clear();
                  _emailField.clear();
                },
              );
            },
          ),
          BlocListener<RegistrationBloc, RegistrationState>(
            bloc: _registrationBloc,
            listener: (context, state) {
              state.maybeMap(
                registered: (_) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                          'Вы успешно зарегистрировались! Теперь можете войти'),
                    ),
                  );
                },
                orElse: () {},
              );
            },
          )
        ],
        child: SingleChildScrollView(
          reverse: true,
          child: Center(
            child: Column(
              children: [
                BlocBuilder<AuthBloc, AuthState>(
                  bloc: _authBloc,
                  builder: (context, state) {
                    return state.maybeMap(
                        authorization: (_) {
                          return const Column(children: [
                            SizedBox(height: 10),
                            CircularProgressIndicator()
                          ]);
                        },
                        orElse: () => const SizedBox());
                  },
                ),
                const SizedBox(height: 150),
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
                const SizedBox(height: 30),
                FilledButton(
                  onPressed: () {
                    logIn(context, _emailField.text, _passwordField.text);
                  },
                  style: ButtonStyle(
                    fixedSize: const MaterialStatePropertyAll(
                      Size(250, 50),
                    ),
                    textStyle: MaterialStatePropertyAll(
                        Theme.of(context).textTheme.titleMedium),
                  ),
                  child: const Text('Авторизоваться'),
                ),
                TextButton(
                  onPressed: () {
                    openRegistrationPage(context);
                  },
                  child: const Text('Нет аккаунта? Зарегистрироваться'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void openRegistrationPage(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    AutoRouter.of(context).push(const RegistrationRoute());
  }

  void logIn(BuildContext context, String email, String password) {
    FocusManager.instance.primaryFocus?.unfocus();
    _authBloc.add(AuthEvent.signIn(email: email, password: password));
  }
}
