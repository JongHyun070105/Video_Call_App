import 'package:flutter/material.dart';
import 'package:video_call_application/screen/home_screen.dart';
import 'package:camera/camera.dart';

void main() {
  runApp(MaterialApp(home: HomeScreen()));
}

// late List<CameraDescription> _cameras;

// Future<void> main() async {
//   // Flutter 앱이 실행될 준비가 됐는지 확인
//   WidgetsFlutterBinding.ensureInitialized();

//   // 핸드폰에 있는 카메라들 가져오기
//   _cameras = await availableCameras();
//   runApp(const CameraApp());
// }

// class CameraApp extends StatefulWidget {
//   const CameraApp({Key? key}) : super(key: key);

//   @override
//   State<CameraApp> createState() => _CameraAppState();
// }

// class _CameraAppState extends State<CameraApp> {
//   // 카메라를 제어할 수 있는 컨트롤러 선언
//   late CameraController controller;

//   @override
//   void initState() {
//     super.initState();

//     initializeCamera();
//   }

//   initializeCamera() async {
//     try {
//       // 첫번째 카메라로 카메라 설정
//       controller = CameraController(_cameras[0], ResolutionPreset.max);

//       // 카메라 초기화
//       await controller.initialize();

//       setState(() {});
//     } catch (e) {
//       // 에러 났을 때 출력
//       if (e is CameraException) {
//         switch (e.code) {
//           case 'CameraAccessDenied':
//             print('User denied Camera access.');
//             break;
//           default:
//             print('Handle other errors.');
//             break;
//         }
//       }
//     }
//   }

//   @override
//   void dispose() {
//     // 컨트롤러 삭제
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // 카메라 초기화 상태 확인
//     if (!controller.value.isInitialized) {
//       return Container();
//     }
//     return MaterialApp(
//       // 카메라 보여주기
//       home: CameraPreview(controller),
//     );
//   }
// }
