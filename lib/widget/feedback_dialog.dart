import 'package:flutter/material.dart';
import 'package:baseapp/l10n/app_localizations.dart';

class FeedbackDialog extends StatefulWidget {
  const FeedbackDialog({super.key});

  static Future<Map<String, String>?> show(BuildContext context) {
    return showDialog<Map<String, String>>(
      context: context,
      builder: (context) => FeedbackDialog(),
    );
  }

  @override
  State<FeedbackDialog> createState() => _FeedbackDialogState();
}

class _FeedbackDialogState extends State<FeedbackDialog> {
  int _currentStep = 0;
  String _category = '';
  String? _messageError;
  String? _emailError;
  final _messageController = TextEditingController();
  final _emailController = TextEditingController();

  // 타이틀 가져오기
  String _getTitle(AppLocalizations l10n) {
    switch (_currentStep) {
      case 0:
        return l10n.inquiryType;
      case 1:
        return l10n.contentInput;
      case 2:
        return l10n.emailOptional;
      default:
        return '';
    }
  }

  // // 컨텐츠 가져오기
  Widget _buildContent(AppLocalizations l10n) {
    switch (_currentStep) {
      case 0:
        return _buildCategoryStepContent(l10n);
      case 1:
        return _buildMessageStepContent(l10n);
      case 2:
        return _buildEmailStepContent(l10n);
      default:
        return SizedBox();
    }
  }

  Widget _buildCategoryStepContent(AppLocalizations l10n) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(Icons.lightbulb_outline),
          title: Text(l10n.featureSuggestion),
          subtitle: Text(l10n.featureSuggestionDesc),
          onTap: () {
            setState(() {
              _category = l10n.featureSuggestion;
              _currentStep++;
            });
          },
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(Icons.bug_report_outlined),
          title: Text(l10n.bugReport),
          subtitle: Text(l10n.bugReportDesc),
          onTap: () {
            setState(() {
              _category = l10n.bugReport;
              _currentStep++;
            });
          },
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(Icons.question_mark_outlined),
          title: Text(l10n.otherInquiry),
          subtitle: Text(l10n.otherInquiryDesc),
          onTap: () {
            setState(() {
              _category = l10n.otherInquiry;
              _currentStep++;
            });
          },
        ),
      ],
    );
  }

  Widget _buildMessageStepContent(AppLocalizations l10n) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: _messageController,
          autofocus: true,
          maxLength: 300,
          maxLines: 4,
          keyboardType: TextInputType.multiline,
          decoration: InputDecoration(
            hintText: l10n.messageHint,
            hintStyle: TextStyle(color: Colors.grey),
            errorText: _messageError,
          ),
        ),
      ],
    );
  }

  Widget _buildEmailStepContent(AppLocalizations l10n) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: _emailController,
          autofocus: true,
          maxLength: 100,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: l10n.emailHint,
            hintStyle: TextStyle(color: Colors.grey),
            errorText: _emailError,
          ),
        ),
        SizedBox(height: 16),
        Text(l10n.emailNote, style: TextStyle(color: Colors.grey)),
      ],
    );
  }

  // // 액션 가져오기
  List<Widget> _buildActions(AppLocalizations l10n) {
    switch (_currentStep) {
      case 0:
        return _buildCategoryStepActions(l10n);
      case 1:
        return _buildMessageStepActions(l10n);
      case 2:
        return _buildEmailStepActions(l10n);
      default:
        return [];
    }
  }

  List<Widget> _buildCategoryStepActions(AppLocalizations l10n) {
    return [
      TextButton(
        onPressed: () => Navigator.pop(context),
        child: Text(l10n.close),
      ),
    ];
  }

  List<Widget> _buildMessageStepActions(AppLocalizations l10n) {
    return [
      TextButton(
        onPressed: () => setState(() {
          _currentStep--;
        }),
        child: Text(l10n.previous),
      ),
      TextButton(
        onPressed: () {
          final message = _messageController.text.trim();
          if (message.length < 5) {
            setState(() {
              _messageError = l10n.messageMinLength;
            });
            return;
          }
          setState(() {
            _messageError = null;
            _currentStep++;
          });
        },
        child: Text(l10n.next),
      ),
    ];
  }

  List<Widget> _buildEmailStepActions(AppLocalizations l10n) {
    return [
      TextButton(
        onPressed: () => setState(() {
          _currentStep--;
        }),
        child: Text(l10n.previous),
      ),
      TextButton(
        onPressed: () {
          final email = _emailController.text.trim();
          if (email.isNotEmpty && !email.contains('@')) {
            setState(() {
              _emailError = l10n.invalidEmail;
            });
            return;
          }
          Navigator.pop(context, {
            'category': _category,
            'message': _messageController.text.trim(),
            'email': _emailController.text.trim(),
          });
        },
        child: Text(l10n.submit),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      title: Text(_getTitle(l10n)),
      content: _buildContent(l10n),
      actions: _buildActions(l10n),
    );
  }
}
