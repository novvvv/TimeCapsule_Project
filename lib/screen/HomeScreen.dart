import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Capsule"),
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MessageFormScreen(),),
            );
          },
          child: Text("Add Message"),
        ),
      ),
    );
  }
}

class MessageFormScreen extends StatefulWidget {
  const MessageFormScreen({super.key});

  @override
  State<MessageFormScreen> createState() => _MessageFormScreenState();
}

class _MessageFormScreenState extends State<MessageFormScreen> {

  // About GlobalKey
  // 폼의 상태에 접근하기 위해서 사용 해당 폼이 유효한지 검사한 뒤, 결과를 처리한다.
  // 주의! : GlobalKey는 위젯트리 내부에서 유일해야 한다.
  final _formKey = GlobalKey<FormState>();
  final _messageController = TextEditingController();

  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  void _submitMessage() {
    if (_formKey.currentState!.validate()) {
      String message = _messageController.text;
      // 메시지 저장 로직 추가
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Message Saved: $message')),
      );
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



