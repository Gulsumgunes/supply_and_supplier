// import 'package:flutter/material.dart';

// void main() {
//   runApp(const FigmaToCodeApp());
// }

// class FigmaToCodeApp extends StatelessWidget {
//   const FigmaToCodeApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Giriş ekranı',
//       theme: ThemeData.dark().copyWith(
//         scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
//       ),
//       home: const LoginScreen(),
//     );
//   }
// }

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         key: _scaffoldKey,
//         appBar: AppBar(
//           title: const Text('Login Page'),
//         ),
//         body: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Form(
//                 key: _formKey,
//                 child: const Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[

//                       const Spacer(),

//                       Text(
//                         'CodeChamp.in',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 32,
//                           fontFamily: 'Jockey One',
//                           fontWeight: FontWeight.w400,
//                           height: 0,
//                         ),
//                       ),

//                     ]))));
//   }
// }
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
              // ... (your existing widgets)

              Container(
                width: 40,
                height: 40,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: const Stack(
                  children: [
                    // Add your Stack children here
                  ],
                ),
              ),

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

              const Spacer(),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/1.png',
                    width: 200,
                    height: 100,
                  ),
                  const SizedBox(width: 30.0),
                  const Text(
                    '',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),

              const Text(
                'Hello , Welcome !',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: 'Jockey One',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),

              const Text(
                'Welcome to codeChamp.in Top platform to coders',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FigmaToCodeApp()),
                  );
                  // Butona tıklandığında yapılacak işlemler
                },
                // style: ElevatedButton.styleFrom(
                //   padding: const EdgeInsets.symmetric(
                //       horizontal: 85.0, vertical: 15.0),
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(20.0),
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
                      child: const Center(
                        child: Text(
                          'Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w900,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                        height:
                            10), // İstediğiniz boşluk miktarını ayarlayabilirsiniz
                    Container(
                      width: 330,
                      height: 54,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFDAC0A3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Sign Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w900,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
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
