// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get settingsTitle => '설정 화면';

  @override
  String get appVersion => '앱 버전';

  @override
  String get loading => '불러오는 중...';

  @override
  String get serviceIntro => '서비스 소개';

  @override
  String get serviceIntroDesc1 => '서비스 한 줄 소개를 입력해주세요.';

  @override
  String get serviceIntroDesc2 => '이 서비스의 목적을 입력해주세요.';

  @override
  String get serviceIntroDesc3 => '사용자의 다음 행동을 제안해주세요.';

  @override
  String get customerSupport => '고객 문의/제안';

  @override
  String get inquiryType => '문의 유형';

  @override
  String get contentInput => '내용 입력';

  @override
  String get emailOptional => '이메일 주소 (선택 사항)';

  @override
  String get featureSuggestion => '기능 제안';

  @override
  String get featureSuggestionDesc => '원하는 기능을 말씀해주세요';

  @override
  String get bugReport => '버그 신고';

  @override
  String get bugReportDesc => '불편한 점을 말씀해주세요';

  @override
  String get otherInquiry => '기타 문의';

  @override
  String get otherInquiryDesc => '궁금한 점을 말씀해주세요';

  @override
  String get close => '닫기';

  @override
  String get previous => '이전';

  @override
  String get next => '다음';

  @override
  String get submit => '제출';

  @override
  String get ok => '확인';

  @override
  String get messageMinLength => '5자 이상 입력해주세요';

  @override
  String get invalidEmail => '올바른 이메일 주소를 입력해주세요';

  @override
  String get messageHint =>
      '예시) 앱을 실행하면 화면이 깜빡이고 검은 화면이 나타납니다. 앱을 재시작해도 동일한 문제가 발생합니다.';

  @override
  String get emailHint => 'example@email.com';

  @override
  String get emailNote =>
      '답변을 받으시려면 이메일 주소를 입력해주세요. 이메일 주소는 답변 용도 외에 사용되지 않습니다';

  @override
  String get notProvided => '제공하지 않음';

  @override
  String get feedbackSuccessTitle => '문의가 성공적으로 전송되었습니다!';

  @override
  String get feedbackSuccessMessage =>
      '보내주신 의견 덕분에 앱이 더 좋아질 거예요. 정말 감사합니다!\n\n혹시 앱이 마음에 드신다면, 스토어에 리뷰 한 줄도 남겨주세요! 앱 제작에 정말 큰 힘이 됩니다 😊';

  @override
  String get themeMode => '테마 모드';

  @override
  String get themeModeLight => '라이트';

  @override
  String get themeModeDark => '다크';

  @override
  String get themeModeSystem => '시스템 기본값';

  @override
  String get language => '언어';

  @override
  String get languageSystem => '시스템 기본값';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageSpanish => 'Español';

  @override
  String get languageKorean => '한국어';

  @override
  String get languageJapanese => '日本語';

  @override
  String get languageChinese => '简体中文';
}
