import 'package:flutter/material.dart';
import 'package:testapp/features/Login/presentation/pages/InitialScreens/initial_screen_three.dart';
import 'package:testapp/features/Login/presentation/widgets/Information.dart';
import 'package:testapp/features/Login/presentation/widgets/page_indicator.dart';

class InitialScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _openMyPage() {
      Navigator.push<void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => InitialScreenThree(),
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
                imageUrl: ('assets/images/illustration 02.png'),
                title: "Quick and easy learning",
                desc:
                    "Easy and fast learning at any time to help you improve various skills"),
            SizedBox(height: 32),
            PageIndicator(currentPage: 2, pageCount: 4),
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
