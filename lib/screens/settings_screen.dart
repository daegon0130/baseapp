import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('설정 화면')),
      body: ListView(
        children: [
          SizedBox(height: 16),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('앱 버전'),
            subtitle: Text('1.0.0'), // TODO: 앱 버전 표시
          ),
          Divider(height: 0),
          ListTile(
            minVerticalPadding: 25,
            leading: Icon(Icons.description_outlined),
            title: Text('서비스 소개'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // TODO: 서비스 소개 페이지로 이동
            },
          ),
          Divider(height: 0),
          ListTile(
            minVerticalPadding: 25,
            leading: Icon(Icons.mail_outline),
            title: Text('고객 문의/제안'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // TODO: 고객 문의/제안 페이지로 이동
            },
          ),
          Divider(height: 0),
        ],
      ),
    );
  }
}
