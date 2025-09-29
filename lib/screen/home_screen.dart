import 'package:flutter/material.dart';
import 'package:video_call_application/screen/cam_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100]!,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Expanded(child: _Logo()), // 로고
              Expanded(child: _Image()), // 중앙 이미지
              Expanded(child: _EntryButton()), // 통화 시작 버튼
            ],
          ),
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            // boxShadow는 리스트로 감싸줘야함
            BoxShadow(
              color: Colors.blue[300]!,
              blurRadius: 12, // 흐림 정도
              spreadRadius: 2, // 퍼짐 정도
            ),
          ],
        ),

        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.videocam, color: Colors.white, size: 40),
              SizedBox(width: 16),
              Text(
                "LIVE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  letterSpacing: 4, // 글자간 간격
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset('asset/img/home_img.png'));
  }
}

class _EntryButton extends StatelessWidget {
  const _EntryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (_) => CamScreen()));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white,
          ),
          child: Text("입장하기"),
        ),
      ],
    );
  }
}
