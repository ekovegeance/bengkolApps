  import 'dart:io';
  import 'package:flutter/services.dart';
  import 'package:flutter/material.dart';
  import 'package:splash_screen_view/SplashScreenView.dart';
  import 'package:supabase_flutter/supabase_flutter.dart';
  
  
  
  import 'package:myapp/src/pages/splash/page.dart';
  import 'package:teta_cms/teta_cms.dart';

  ///NOTE:
  ///if you have an error while running <flutter run> 
  ///run <flutter pub upgrade> and than <flutter run --no-sound-null-safety>
  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    await TetaCMS.initialize(
      token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImVrb3ZlZ2VhbmNlN0BnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwicHJvamVjdHMiOlsxMjc1MjcsMTI2ODYwLDEyNjkxMCwxMjY5MTFdLCJpbWFnZSI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hLS9BT2gxNEdoalVJckJjT1ZXQzE4S0pVVlFzSkYzSmVSSERqbVpmWVRfRVB4bTRRPXM5Ni1jIiwibmFtZSI6ImVrb3ZlZ2VhbmNlIiwiZW1pdHRlciI6IlRldGEtQXV0aCIsImlhdCI6MTY1NDI2NTEwMiwiZXhwIjo0ODEwMDI1MTAyfQ.f5pZCFfU0yjofvM832M11ahPb-JKvcmU54MMB1UJWAQ',
      prjId: 126860,
    );
    
      Supabase.initialize(
    url: 'https://sibksuxmtloxlwgvmnly.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNpYmtzdXhtdGxveGx3Z3Ztbmx5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTQxNTI0MDAsImV4cCI6MTk2OTcyODQwMH0.iqg-JRhwoGkFeZkrsNaslY-d-Wo1NaumfHCmlRfXs0I',
  );
  
    
    
    runApp(MyApp());
  }
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'bengkol',
        home: SplashScreenView(
          navigateRoute: PageSplash(),
          duration: 2200,
          imageSize: 80,
          imageSrc: 'assets/teta-app.png',
          text: '',
          textType: TextType.NormalText,
          textStyle: TextStyle(
            fontSize: 30.0,
          ),
          backgroundColor: Colors.black,
        ),
      );
    }
  }
  