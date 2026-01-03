// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get settingsTitle => '设置';

  @override
  String get appVersion => '应用版本';

  @override
  String get loading => '加载中...';

  @override
  String get serviceIntro => '服务介绍';

  @override
  String get serviceIntroDesc1 => '请输入服务的一句话介绍。';

  @override
  String get serviceIntroDesc2 => '请输入此服务的目的。';

  @override
  String get serviceIntroDesc3 => '请建议用户的下一步操作。';

  @override
  String get customerSupport => '客户咨询/建议';

  @override
  String get inquiryType => '咨询类型';

  @override
  String get contentInput => '内容输入';

  @override
  String get emailOptional => '电子邮件地址（可选）';

  @override
  String get featureSuggestion => '功能建议';

  @override
  String get featureSuggestionDesc => '告诉我们您想要的功能';

  @override
  String get bugReport => '错误报告';

  @override
  String get bugReportDesc => '告诉我们遇到的问题';

  @override
  String get otherInquiry => '其他咨询';

  @override
  String get otherInquiryDesc => '询问任何问题';

  @override
  String get close => '关闭';

  @override
  String get previous => '上一步';

  @override
  String get next => '下一步';

  @override
  String get submit => '提交';

  @override
  String get ok => '确定';

  @override
  String get messageMinLength => '请输入至少5个字符';

  @override
  String get invalidEmail => '请输入有效的电子邮件地址';

  @override
  String get messageHint => '示例）启动应用时，屏幕闪烁并出现黑屏。即使重启应用也会出现相同的问题。';

  @override
  String get emailHint => 'example@email.com';

  @override
  String get emailNote => '请输入您的电子邮件地址以接收回复。您的电子邮件仅用于回复';

  @override
  String get notProvided => '未提供';

  @override
  String get feedbackSuccessTitle => '您的咨询已成功发送！';

  @override
  String get feedbackSuccessMessage =>
      '感谢您的反馈，这将帮助我们改进应用！\n\n如果您喜欢这个应用，请在商店留下评论！这对我们帮助很大 😊';
}
