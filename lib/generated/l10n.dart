// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `hello`
  String get hello {
    return Intl.message(
      'hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Không được để trống!`
  String get doNotEmpty {
    return Intl.message(
      'Không được để trống!',
      name: 'doNotEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Email không đúng định dạng`
  String get emailError {
    return Intl.message(
      'Email không đúng định dạng',
      name: 'emailError',
      desc: '',
      args: [],
    );
  }

  /// `Password phải lớn hơn 6`
  String get passwordError {
    return Intl.message(
      'Password phải lớn hơn 6',
      name: 'passwordError',
      desc: '',
      args: [],
    );
  }

  /// `Login thành công!`
  String get usernameLoginSuccess {
    return Intl.message(
      'Login thành công!',
      name: 'usernameLoginSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Favorite`
  String get favorite {
    return Intl.message(
      'Favorite',
      name: 'favorite',
      desc: '',
      args: [],
    );
  }

  /// `Book a cab, tricycle or bike within seconds`
  String get intro {
    return Intl.message(
      'Book a cab, tricycle or bike within seconds',
      name: 'intro',
      desc: '',
      args: [],
    );
  }

  /// `The fastest app to book a cab, tricycle, or a bike anywhere `
  String get intro2 {
    return Intl.message(
      'The fastest app to book a cab, tricycle, or a bike anywhere ',
      name: 'intro2',
      desc: '',
      args: [],
    );
  }

  /// `Give me a ride`
  String get btnIntro {
    return Intl.message(
      'Give me a ride',
      name: 'btnIntro',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ja'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
