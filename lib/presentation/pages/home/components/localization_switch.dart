import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:web_portfolio/presentation/app/lang/l10n.dart';

class LocalizationSwitch extends StatelessWidget {
  const LocalizationSwitch({
    Key? key,
    required this.onLocaleChange,
  }) : super(key: key);

  final ValueChanged<String?> onLocaleChange;

  String getStringForLocale(Locale locale) {
    switch (locale.languageCode) {
      case 'es':
        return 'Español';
      case 'en':
        return 'English';
      default:
        return 'English';
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        elevation: 1,
        value: Intl.getCurrentLocale(),
        onChanged: onLocaleChange,
        items: S.delegate.supportedLocales
            .map(
              (locale) => DropdownMenuItem<String>(
                value: locale.languageCode,
                child: Text(getStringForLocale(locale)),
              ),
            )
            .toList(),
      ),
    );
  }
}
