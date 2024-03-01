import 'package:flutter/material.dart';
import 'package:testapp/features/Account/presentation/widgets/account_item.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(top: 56, left: 20, right: 20),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    'Account',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Avatar.png',
                    width: 200,
                    height: 200,
                  )
                ],
              ),
              const AccountItem(text: "Favourite", icon: Icons.favorite_outline_outlined),
              SizedBox(height: 32),
              const AccountItem(text: "Edit Account", icon: Icons.edit_attributes_outlined),
              SizedBox(height: 32),
              const AccountItem(text: "Settings and Privacy", icon: Icons.privacy_tip_outlined),
              SizedBox(height: 32),
              const AccountItem(text: "Help", icon: Icons.help_center_outlined),
            ],
          )),
    );
  }
}
