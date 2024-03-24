import 'package:Hashi/components/app_icons.dart';
import 'package:Hashi/config/app_routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: SizedBox(
            height: constraints.maxHeight,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  // const Text(
                  //   'Hello, welcome back!',
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontSize: 22,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  // const SizedBox(height: 10), // Adjust spacing as needed
                  const Spacer(),
                  Image.asset(
                    'assets/images/logo.png',
                    width: 200,
                    height: 200,
                  ),
                  Text(
                    'Hashi',
                    style: textTheme.displayLarge,
                  ),
                  Text(
                    'Bridge between connections',
                    style: textTheme.displaySmall,
                  ),

                  const Spacer(),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(17),
                        ),
                      ),
                      filled: true,
                      fillColor: theme.secondary,
                      // fillColor: Colors.white.withOpacity(0.5),
                    ),
                  ),

                  const SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(17),
                        ),
                      ),
                      filled: true,
                      fillColor: theme.secondary,
                    ),
                  ),

                  // const SizedBox(
                  //   height: 32,
                  // ),

                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {
                        debugPrint('Forgot is Clicked');
                        //TODO : Implement Forgot Password
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 53, 133, 139),
                      ),
                      child: const Text('Forgot Password?'),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (Context) {
                        //       return HomePage();
                        //     },
                        //   ),
                        // );
                        Navigator.of(context).pushReplacementNamed(AppRoutes.main);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff14FFEC),
                        foregroundColor: Colors.black54,
                      ),
                      child: const Text('Log in'),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'Or sign in with',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        debugPrint('Google is Clicked');
                        //TODO : Implement Google Login
                      },
                      style: ElevatedButton.styleFrom(
                        // minimumSize: const Size(150, 40),
                        // // Set desired width and height
                        // maximumSize: const Size(369, 40),
                        // // Set the same size for a fixed size
                        // padding: EdgeInsets.zero,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black54,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppIcons.icGoogle,
                            width: 22,
                            height: 22,
                          ),
                          const SizedBox(width: 8),
                          const Text('Login with Google'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),

                  SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        // minimumSize: const Size(150, 40),
                        // // Set desired width and height
                        // maximumSize: const Size(369, 40),
                        // // Set the same size for a fixed size
                        // padding: EdgeInsets.zero,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black54,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            AppIcons.icFacebook,
                            width: 22,
                            height: 22,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text('Login with Facebook'),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: const Color.fromARGB(255, 0, 173, 181),
                        ),
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
