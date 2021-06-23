import 'package:login_flutter_bloc/authentication_repository.dart';
import 'package:login_flutter_bloc/app.dart';
import 'package:flutter/widgets.dart';
import 'package:login_flutter_bloc/user_repository.dart';

void main() {
  runApp(App(
    authenticationRepository: AuthenticationRepository(),
    userRepository: UserRepository(),
  ));
}