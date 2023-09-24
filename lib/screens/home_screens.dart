import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagmentapp/cubits/auth/auth_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return state is LoadingLoginState
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: () {
                      AuthCubit.get(context).login("eslam@gmail.com", "123456");
                    },
                    child: Text("Login"),
                  );
          },
        ),
      ),
    );
  }
}