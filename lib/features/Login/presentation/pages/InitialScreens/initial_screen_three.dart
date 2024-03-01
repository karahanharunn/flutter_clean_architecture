import 'package:flutter/material.dart';
import 'package:testapp/features/Login/presentation/pages/InitialScreens/login_or_register.dart';
import 'package:testapp/features/Login/presentation/widgets/Information.dart';
import 'package:testapp/features/Login/presentation/widgets/page_indicator.dart';

class InitialScreenThree extends StatelessWidget {
  const InitialScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    void _openMyPage() {
      Navigator.push<void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => LoginOrRegister(),
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Information(
                imageUrl: ('assets/images/illustration 03.jpg'),
                title: "Enjoy your learning journey",
                desc:
                    "Have fun while learning and enjoy the journey to success"),
            SizedBox(height: 32),
            PageIndicator(currentPage: 3, pageCount: 4),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _openMyPage,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  child: const Text(
                    'Next',
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
