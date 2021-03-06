import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:orderbus/config/app_constants.dart';
import 'package:orderbus/config/app_dimens.dart';
import 'package:orderbus/config/app_images.dart';
import 'package:orderbus/generated/l10n.dart';
import 'package:orderbus/models/user.dart';
import 'package:orderbus/providers/store.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String userName = "";
  String password = "";
  List<String> errors = <String>[];

  login(BuildContext context) {
    final newErrors = <String>[];
    if (isValidateEmpty(userName) || isValidateEmpty(password)) {
      newErrors.add(S.of(context).doNotEmpty);
    }

    if (isValidateEmail()) {
      newErrors.add(S.of(context).emailError);
    }

    if (isValidatePassword()) {
      newErrors.add(S.of(context).passwordError);
    }

    if (newErrors.isEmpty) {
      final store = Provider.of<Store>(context, listen: false);
      store.saveUser(User(userName, password));
    }
    setState(() {
      errors = newErrors;
    });
  }

  bool isValidateEmpty(String value) {
    return value.isEmpty;
  }

  bool isValidateEmail() {
    final regex = RegExp(AppConstants.regex);
    return !regex.hasMatch(userName);
  }

  bool isValidatePassword() {
    return password.length < 6;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(24),
          child: ListView(
            children: [
              Image.asset(
                AppImages.icChat,
                fit: BoxFit.contain,
                width: AppDimens.w250,
                height: AppDimens.w250,
              ),
              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  label: const Text("Email"),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                onChanged: (value) => userName = value,
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  label: const Text("Password"),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                onChanged: (value) => password = value,
              ),
              const SizedBox(height: 10),
              Text(
                errors.isNotEmpty ? errors[0] : "",
                style: TextStyle(
                  color: errors.isNotEmpty ? Colors.red : Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  minimumSize: const Size.fromHeight(45),
                  
                ),
                onPressed: () => login(context),
                child: const Text("LOGIN"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
