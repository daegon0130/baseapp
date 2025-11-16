import 'dart:io';

import 'package:baseapp/clients/discord_webhook.dart';
import 'package:baseapp/widget/feedback_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:baseapp/l10n/app_localizations.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  Future<PackageInfo> _getPackageInfo() async {
    return await PackageInfo.fromPlatform();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.settingsTitle)),
      body: ListView(
        children: [
          SizedBox(height: 16),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text(l10n.appVersion),
            subtitle: FutureBuilder(
              future: _getPackageInfo(),
              builder: (context, snapshot) {
                return Text(snapshot.data?.version ?? l10n.loading);
              },
            ),
          ),
          Divider(height: 0),
          ListTile(
            minVerticalPadding: 25,
            leading: Icon(Icons.description_outlined),
            title: Text(l10n.serviceIntro),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text(l10n.serviceIntro),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      Text(l10n.serviceIntroDesc1),
                      SizedBox(height: 12),
                      Text(l10n.serviceIntroDesc2),
                      SizedBox(height: 12),
                      Text(l10n.serviceIntroDesc3),
                      SizedBox(height: 8),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: Text(l10n.ok),
                    ),
                  ],
                ),
              );
            },
          ),
          Divider(height: 0),
          ListTile(
            minVerticalPadding: 25,
            leading: Icon(Icons.mail_outline),
            title: Text(l10n.customerSupport),
            trailing: Icon(Icons.chevron_right),
            onTap: () async {
              // TODO: 고객 문의/제안 페이지로 이동
              // 1단계: 문의 유형 선택 (기능 제안, 버그 신고, 기타 문의)
              // 2단계: 문의 내용 입력
              // 3단계: 사용자가 답변 받을 이메일 입력 (선택사항)

              final feedback = await FeedbackDialog.show(context);
              if (feedback == null) {
                return;
              }

              // 마지막 사용자로부터 받은 메시지를 디스코드로 전송
              // 1. 타이틀
              // 문의 카테고리, 앱 이름, 앱 버전
              final packageInfo = await _getPackageInfo();
              final title =
                  '${feedback['category']} :: ${packageInfo.appName} ${packageInfo.version}';
              // 기능 제안 :: Baseapp 1.0.0

              // 2. 메시지
              // 문의 내용 + 기기 정보 + 이메일
              final deviceInfo =
                  '${Platform.operatingSystem} ${Platform.operatingSystemVersion}';
              String message = '💬 ${feedback['message']}';
              message +=
                  '\n\n📨 ${feedback['email']!.isNotEmpty ? feedback['email'] : l10n.notProvided}';
              message += '\n\n💻 $deviceInfo';

              // 3. 우선순위
              // 문의 카테고리에 따라 스위치 문으로 우선순위 지정
              final priority = switch (feedback['category']) {
                _ when feedback['category'] == l10n.featureSuggestion =>
                  Priority.medium,
                _ when feedback['category'] == l10n.bugReport => Priority.high,
                _ => Priority.low,
              };

              // 메시지 전송
              await DiscordWebhookClient().sendMessage(
                title: title,
                message: message,
                priority: priority,
              );

              // 전송 성공 다이얼로그 표시
              if (context.mounted) {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 16),
                        Text(
                          l10n.feedbackSuccessTitle,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          l10n.feedbackSuccessMessage,
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(l10n.ok),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
          Divider(height: 0),
        ],
      ),
    );
  }
}
