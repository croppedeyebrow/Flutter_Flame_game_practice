import 'package:flutter/material.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Image.asset(
          'assets/images/racing_main.png',
          fit: BoxFit.cover,
          opacity: AlwaysStoppedAnimation(0.7),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// 제목 텍스트
            Text(
              'Flutter Racer',
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),

            /// 시작 버튼
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black54,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                onPressed: () {
                  //버튼을 클릭하면 이곳 내부가 실행됨.
                  print("레이싱 시작하기 버튼 클릭됨");
                },
                child: Text('레이싱 시작하기',
                    style: TextStyle(fontSize: 30, color: Colors.white)))
          ],
        )
      ]),
    );
  }
}
