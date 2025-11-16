// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get settingsTitle => '設定画面';

  @override
  String get appVersion => 'アプリバージョン';

  @override
  String get loading => '読み込み中...';

  @override
  String get serviceIntro => 'サービス紹介';

  @override
  String get serviceIntroDesc1 => 'サービスの一行紹介を入力してください。';

  @override
  String get serviceIntroDesc2 => 'このサービスの目的を入力してください。';

  @override
  String get serviceIntroDesc3 => 'ユーザーの次のアクションを提案してください。';

  @override
  String get customerSupport => 'お問い合わせ/提案';

  @override
  String get inquiryType => 'お問い合わせ種類';

  @override
  String get contentInput => '内容入力';

  @override
  String get emailOptional => 'メールアドレス（任意）';

  @override
  String get featureSuggestion => '機能提案';

  @override
  String get featureSuggestionDesc => '希望する機能を教えてください';

  @override
  String get bugReport => 'バグ報告';

  @override
  String get bugReportDesc => '不便な点を教えてください';

  @override
  String get otherInquiry => 'その他お問い合わせ';

  @override
  String get otherInquiryDesc => '気になることを教えてください';

  @override
  String get close => '閉じる';

  @override
  String get previous => '前へ';

  @override
  String get next => '次へ';

  @override
  String get submit => '送信';

  @override
  String get ok => '確認';

  @override
  String get messageMinLength => '5文字以上入力してください';

  @override
  String get invalidEmail => '正しいメールアドレスを入力してください';

  @override
  String get messageHint =>
      '例）アプリを起動すると画面が点滅し、黒い画面が表示されます。アプリを再起動しても同じ問題が発生します。';

  @override
  String get emailHint => 'example@email.com';

  @override
  String get emailNote => '返信を受け取るにはメールアドレスを入力してください。メールアドレスは返信用途以外には使用されません';

  @override
  String get notProvided => '提供なし';

  @override
  String get feedbackSuccessTitle => 'お問い合わせが正常に送信されました！';

  @override
  String get feedbackSuccessMessage =>
      'お寄せいただいたご意見のおかげでアプリがより良くなります。本当にありがとうございます！\n\nもしアプリが気に入っていただけたら、ストアにレビューを残してください！アプリ制作の大きな励みになります 😊';
}
