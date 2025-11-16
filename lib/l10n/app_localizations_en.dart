// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get settingsTitle => 'Settings';

  @override
  String get appVersion => 'App Version';

  @override
  String get loading => 'Loading...';

  @override
  String get serviceIntro => 'Service Introduction';

  @override
  String get serviceIntroDesc1 =>
      'Please enter a one-line description of the service.';

  @override
  String get serviceIntroDesc2 => 'Please enter the purpose of this service.';

  @override
  String get serviceIntroDesc3 => 'Please suggest the user\'s next action.';

  @override
  String get customerSupport => 'Customer Support/Suggestions';

  @override
  String get inquiryType => 'Inquiry Type';

  @override
  String get contentInput => 'Content Input';

  @override
  String get emailOptional => 'Email Address (Optional)';

  @override
  String get featureSuggestion => 'Feature Suggestion';

  @override
  String get featureSuggestionDesc => 'Tell us about the features you want';

  @override
  String get bugReport => 'Bug Report';

  @override
  String get bugReportDesc => 'Tell us about any issues';

  @override
  String get otherInquiry => 'Other Inquiry';

  @override
  String get otherInquiryDesc => 'Ask us anything';

  @override
  String get close => 'Close';

  @override
  String get previous => 'Previous';

  @override
  String get next => 'Next';

  @override
  String get submit => 'Submit';

  @override
  String get ok => 'OK';

  @override
  String get messageMinLength => 'Please enter at least 5 characters';

  @override
  String get invalidEmail => 'Please enter a valid email address';

  @override
  String get messageHint =>
      'Example) When I launch the app, the screen flickers and a black screen appears. The same problem occurs even after restarting the app.';

  @override
  String get emailHint => 'example@email.com';

  @override
  String get emailNote =>
      'Enter your email address to receive a response. Your email will only be used for replies';

  @override
  String get notProvided => 'Not provided';

  @override
  String get feedbackSuccessTitle => 'Your inquiry has been successfully sent!';

  @override
  String get feedbackSuccessMessage =>
      'Your feedback helps make the app better. Thank you so much!\n\nIf you like the app, please leave a review on the store! It really helps us a lot 😊';
}
