import 'package:flutter/material.dart';
import 'package:testapp/features/Login/presentation/pages/InitialScreens/initial_screen_two.dart';
import 'package:testapp/features/Login/presentation/pages/InitialScreens/widgets/Information.dart';
import 'package:testapp/features/Login/presentation/pages/InitialScreens/widgets/page_indicator.dart';
import 'package:testapp/features/Login/presentation/pages/login_page.dart';
import 'package:testapp/features/Login/presentation/pages/register_page.dart';

class LoginOrRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _openMyPage(page) {
      Navigator.push<void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => page,
        ),
      );
    }

    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Information(
            imageUrl: ('assets/images/illustration 04.png'),
            title: "Create your own study plan",
            desc:
                "Study according to the study plan, make study more motivated"),
        SizedBox(height: 32),
        PageIndicator(currentPage: 4, pageCount: 4),
        SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () => _openMyPage(RegisterPage()),
              style: OutlinedButton.styleFrom(
                  side: BorderSide(
                      color: Colors.deepPurple), // Set border width and color
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
              child: const Text(
                'Register',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(width: 16),
            ElevatedButton(
              onPressed: () => _openMyPage(LoginPage()),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
