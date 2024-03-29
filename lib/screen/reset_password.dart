import 'package:flutter/material.dart';
import 'package:mobile_prog/screen/loginPage.dart';
import 'package:mobile_prog/theme.dart';
import 'package:mobile_prog/widget/primary_button.dart';
import 'package:mobile_prog/widget/reset_form.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
            ),
            Text(
              'Reset Password',
              style: titleText,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Please enter your email address',
              style: subTitle.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            ResetForm(),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => loginPage(),
                      ));
                },
                child: PrimaryButton(
                  buttonText: 'Reset Password',
                  onPressed: () {},
                )),
          ],
        ),
      ),
    );
  }
}
