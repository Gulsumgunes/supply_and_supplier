import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Giriş ekranı',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'CodeChamp.in',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontFamily: 'Jockey One',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              const Text(
                'Create Account Now!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: 'Jockey One',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),

              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                ),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w900,
                  height: 0,
                ),
              ),
              Container(
                width: 330,
                height: 54,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF8F0E5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27),
                  ),
                ),
              ),

              const Text(
                'Email',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w900,
                  height: 0,
                ),
              ),

              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w900,
                  height: 0,
                ),
              ),
              Container(
                width: 330,
                height: 54,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF8F0E5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27),
                  ),
                ),
              ),
              const Text(
                'Password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w900,
                  height: 0,
                ),
              ),

              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w900,
                  height: 0,
                ),
              ),
              Container(
                width: 330,
                height: 54,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF8F0E5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27),
                  ),
                ),
              ),

              const Text(
                'Phone No',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w900,
                  height: 0,
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Phone',
                  border: OutlineInputBorder(),
                ),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w900,
                  height: 0,
                ),
              ),
              Container(
                width: 330,
                height: 54,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF8F0E5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {},
                // style: ElevatedButton.styleFrom(
                //   padding: const EdgeInsets.symmetric(
                //       horizontal: 85.0, vertical: 15.0),
                //   // Genişlik ayarı
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(20.0), // Şekil ayarı
                //   ),
                // ),
                child: Column(
                  children: [
                    Container(
                      width: 330,
                      height: 54,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFDAC0A3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27),
                        ),
                      ),
                    ),
                    const Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w900,
                        height: 0,
                      ),
                    )
                  ],
                ),
              ),

              // ... (your remaining widgets)
            ],
          ),
        ),
      ),
    );
  }
}
