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

  /// `Search..`
  String get searchHint {
    return Intl.message(
      'Search..',
      name: 'searchHint',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Connecting...`
  String get connecting {
    return Intl.message(
      'Connecting...',
      name: 'connecting',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Deleting`
  String get deleting {
    return Intl.message(
      'Deleting',
      name: 'deleting',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Choose`
  String get choose {
    return Intl.message(
      'Choose',
      name: 'choose',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Download`
  String get download {
    return Intl.message(
      'Download',
      name: 'download',
      desc: '',
      args: [],
    );
  }

  /// `Finish`
  String get finish {
    return Intl.message(
      'Finish',
      name: 'finish',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel2 {
    return Intl.message(
      'Cancel',
      name: 'cancel2',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Later`
  String get later {
    return Intl.message(
      'Later',
      name: 'later',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get create {
    return Intl.message(
      'Create',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `Creating`
  String get creating {
    return Intl.message(
      'Creating',
      name: 'creating',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Updating`
  String get updating {
    return Intl.message(
      'Updating',
      name: 'updating',
      desc: '',
      args: [],
    );
  }

  /// `Upgrade`
  String get upgrade {
    return Intl.message(
      'Upgrade',
      name: 'upgrade',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Call`
  String get call {
    return Intl.message(
      'Call',
      name: 'call',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Password Confirmation`
  String get passwordMatch {
    return Intl.message(
      'Password Confirmation',
      name: 'passwordMatch',
      desc: '',
      args: [],
    );
  }

  /// `A value is required`
  String get emptyValidator {
    return Intl.message(
      'A value is required',
      name: 'emptyValidator',
      desc: '',
      args: [],
    );
  }

  /// `Passwords must match`
  String get passwordValidator {
    return Intl.message(
      'Passwords must match',
      name: 'passwordValidator',
      desc: '',
      args: [],
    );
  }

  /// `Email is invalid`
  String get emailValidator {
    return Intl.message(
      'Email is invalid',
      name: 'emailValidator',
      desc: '',
      args: [],
    );
  }

  /// `Warning!!`
  String get warning {
    return Intl.message(
      'Warning!!',
      name: 'warning',
      desc: '',
      args: [],
    );
  }

  /// `Information`
  String get info {
    return Intl.message(
      'Information',
      name: 'info',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Light Theme`
  String get themeLight {
    return Intl.message(
      'Light Theme',
      name: 'themeLight',
      desc: '',
      args: [],
    );
  }

  /// `Dark Theme`
  String get themeDark {
    return Intl.message(
      'Dark Theme',
      name: 'themeDark',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get languageSelect {
    return Intl.message(
      'Language',
      name: 'languageSelect',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get language {
    return Intl.message(
      'English',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Contact Me`
  String get contactMe {
    return Intl.message(
      'Contact Me',
      name: 'contactMe',
      desc: '',
      args: [],
    );
  }

  /// `About me`
  String get aboutMe {
    return Intl.message(
      'About me',
      name: 'aboutMe',
      desc: '',
      args: [],
    );
  }

  /// `Projects`
  String get projects {
    return Intl.message(
      'Projects',
      name: 'projects',
      desc: '',
      args: [],
    );
  }

  /// `Open Github Repository`
  String get openGithub {
    return Intl.message(
      'Open Github Repository',
      name: 'openGithub',
      desc: '',
      args: [],
    );
  }

  /// `Software Developer.`
  String get softwareDev {
    return Intl.message(
      'Software Developer.',
      name: 'softwareDev',
      desc: '',
      args: [],
    );
  }

  /// `Mastery of OOP (object-oriented programming) having experience in Java, Kotlin, Dart and JavaScript.`
  String get skill1 {
    return Intl.message(
      'Mastery of OOP (object-oriented programming) having experience in Java, Kotlin, Dart and JavaScript.',
      name: 'skill1',
      desc: '',
      args: [],
    );
  }

  /// `Mastery of Clean Architecture and SOLID principles, using code segmented by layers with unique responsibilities.`
  String get skill2 {
    return Intl.message(
      'Mastery of Clean Architecture and SOLID principles, using code segmented by layers with unique responsibilities.',
      name: 'skill2',
      desc: '',
      args: [],
    );
  }

  /// `Mastery of architectures such as MVVM and MVP, BLOC, as well as dependency injection and work with abstractions.`
  String get skill3 {
    return Intl.message(
      'Mastery of architectures such as MVVM and MVP, BLOC, as well as dependency injection and work with abstractions.',
      name: 'skill3',
      desc: '',
      args: [],
    );
  }

  /// `Using version control software, Git using gitflow.`
  String get skill4 {
    return Intl.message(
      'Using version control software, Git using gitflow.',
      name: 'skill4',
      desc: '',
      args: [],
    );
  }

  /// `Native mobile development for Android and using frameworks like Flutter for multiplatform development.`
  String get skill5 {
    return Intl.message(
      'Native mobile development for Android and using frameworks like Flutter for multiplatform development.',
      name: 'skill5',
      desc: '',
      args: [],
    );
  }

  /// `CI / CD for mobile applications on both Android and Ios platforms.`
  String get skill6 {
    return Intl.message(
      'CI / CD for mobile applications on both Android and Ios platforms.',
      name: 'skill6',
      desc: '',
      args: [],
    );
  }

  /// `Unit Test.`
  String get skill7 {
    return Intl.message(
      'Unit Test.',
      name: 'skill7',
      desc: '',
      args: [],
    );
  }

  /// `A flutter package project for simple an awesome dialogs..`
  String get awesomeDialogDesc {
    return Intl.message(
      'A flutter package project for simple an awesome dialogs..',
      name: 'awesomeDialogDesc',
      desc: '',
      args: [],
    );
  }

  /// `Flutter mobile app of Gosocket Corp.`
  String get gosocketInboxDesc {
    return Intl.message(
      'Flutter mobile app of Gosocket Corp.',
      name: 'gosocketInboxDesc',
      desc: '',
      args: [],
    );
  }

  /// `The largest business network in Latin America, which allows small and medium businesses to better communicate with their customers and suppliers.`
  String get gosocketInboxAppDesc {
    return Intl.message(
      'The largest business network in Latin America, which allows small and medium businesses to better communicate with their customers and suppliers.',
      name: 'gosocketInboxAppDesc',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to By Brothers!! Our app is the best guide to our amazing Family Park.`
  String get ByBrothersAppDesc {
    return Intl.message(
      'Welcome to By Brothers!! Our app is the best guide to our amazing Family Park.',
      name: 'ByBrothersAppDesc',
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
      Locale.fromSubtags(languageCode: 'es'),
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
