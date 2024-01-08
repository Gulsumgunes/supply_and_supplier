import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Giriş Ekranı',
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/flutter-banner.png',
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
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      print('Forgot Password?');
                    },
                    child: const Text('Forgot Password?'),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {

                  if (_formKey.currentState!.validate()) {
                    // Doğrulama başarılı ise
                    String email = _emailController.text;
                    String password = _passwordController.text;

                    _showSnackBar(context, 'Giriş Başarılı\nEmail: $email');


                    if (email.trim().isEmpty || password.trim().isEmpty) {
                      _showSnackBar(context, 'Kullanıcı adı ve şifre boş bırakılamaz.');
                      return;
                    }
                  }

                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 85.0, vertical: 15.0),
                  // Genişlik ayarı
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Şekil ayarı
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0, // Yazı boyutu ayarı
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              const Spacer(), // Sayfanın geri kalanını aşağı itmek için Spacer ekledim
              const Text(
                'New User? Create Account',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}

// children: [
                      //   Container(
                      //     width: MediaQuery.of(context).size.width,
                      //     height: MediaQuery.of(context).size.height,
                      //     clipBehavior: Clip.antiAlias,
                      //     decoration: ShapeDecoration(
                      //       color: const Color(0xFF102C57),
                      //       shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(10),
                      //       ),
                      //     ),
                      //     child: Stack(
                      //       children: [
                      //         Positioned(
                      //           left: 55,
                      //           top: 146,
                      //           child: Container(
                      //             width: 321,
                      //             height: 249,
                      //             decoration: const BoxDecoration(
                      //               image: DecorationImage(
                      //                 image:
                      //                     NetworkImage("https://via.placeholder.com/321x249"),
                      //                 fit: BoxFit.fill,
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //         const Positioned(
                      //           left: 45,
                      //           top: 44,
                      //           child: Text(
                      //             'CodeChamp.in',
                      //             style: TextStyle(
                      //               color: Colors.white,
                      //               fontSize: 32,
                      //               fontFamily: 'Jockey One',
                      //               fontWeight: FontWeight.w400,
                      //               height: 0,
                      //             ),
                      //           ),
                      //         ),
                      //         Positioned(
                      //           left: 356,
                      //           top: 47,
                      //           child: Container(
                      //             width: 40,
                      //             height: 40,
                      //             clipBehavior: Clip.antiAlias,
                      //             decoration: const BoxDecoration(),
                      //             child: const Stack(children: []),
                      //           ),
                      //         ),
                      //         const Positioned(
                      //           left: 105,
                      //           top: 441,
                      //           child: Text(
                      //             'Hello , Welcome !',
                      //             style: TextStyle(
                      //               color: Colors.white,
                      //               fontSize: 36,
                      //               fontFamily: 'Jockey One',
                      //               fontWeight: FontWeight.w400,
                      //               height: 0,
                      //             ),
                      //           ),
                      //         ),
                      //         const Positioned(
                      //           left: 61,
                      //           top: 515,
                      //           child: SizedBox(
                      //             width: 309,
                      //             child: Text(
                      //               'Welcome to codeChamp.in Top platform to coders',
                      //               textAlign: TextAlign.center,
                      //               style: TextStyle(
                      //                 color: Colors.white,
                      //                 fontSize: 16,
                      //                 fontFamily: 'Inter',
                      //                 fontWeight: FontWeight.w500,
                      //                 height: 0,
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //         Positioned(
                      //           left: 50,
                      //           top: 599,
                      //           child: Container(
                      //             width: 330,
                      //             height: 54,
                      //             decoration: ShapeDecoration(
                      //               color: const Color(0xFFDAC0A3),
                      //               shape: RoundedRectangleBorder(
                      //                 borderRadius: BorderRadius.circular(27),
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //         Positioned(
                      //           left: 50,
                      //           top: 677,
                      //           child: Container(
                      //             width: 330,
                      //             height: 54,
                      //             decoration: ShapeDecoration(
                      //               color: const Color(0xFFDAC0A3),
                      //               shape: RoundedRectangleBorder(
                      //                 borderRadius: BorderRadius.circular(27),
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //         const Positioned(
                      //           left: 186,
                      //           top: 614,
                      //           child: Text(
                      //             'Login',
                      //             textAlign: TextAlign.center,
                      //             style: TextStyle(
                      //               color: Colors.black,
                      //               fontSize: 20,
                      //               fontFamily: 'Inter',
                      //               fontWeight: FontWeight.w900,
                      //               height: 0,
                      //             ),
                      //           ),
                      //         ),
                      //         const Positioned(
                      //           left: 176,
                      //           top: 692,
                      //           child: Text(
                      //             'Sign Up',
                      //             textAlign: TextAlign.center,
                      //             style: TextStyle(
                      //               color: Colors.black,
                      //               fontSize: 20,
                      //               fontFamily: 'Inter',
                      //               fontWeight: FontWeight.w900,
                      //               height: 0,
                      //             ),
                      //           ),
                      //         ),
                      //         const Positioned(
                      //           left: 149,
                      //           top: 777,
                      //           child: Text(
                      //             'Or  via social media',
                      //             textAlign: TextAlign.center,
                      //             style: TextStyle(
                      //               color: Colors.white,
                      //               fontSize: 14,
                      //               fontFamily: 'Inter',
                      //               fontWeight: FontWeight.w500,
                      //               height: 0,
                      //             ),
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ],
