import 'package:flutter/material.dart';
import 'package:shamo_apps_flutter/theme.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style:
                  primaryTextStyle.copyWith(fontWeight: semibold, fontSize: 24),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'Register and Happy Shoping',
              style: subtitleTextStyle,
            )
          ],
        ),
      );
    }

    Widget nameInput() {
      return Container(
        margin: const EdgeInsets.only(top: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_username.png',
                      width: 17,
                    ),
                    const SizedBox(width: 16,),
                    Expanded(child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Your Full Name',
                        hintStyle: subtitleTextStyle,
                      ),
                    ))
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget usernameInput(){
      return Container(
        margin: const EdgeInsetsDirectional.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Username', style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium
            ),),
            const SizedBox(height: 12,),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset('assets/icon_name.png',width: 17,),
                    const SizedBox(width: 16,),
                    Expanded(child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Username',
                        hintStyle: subtitleTextStyle,
                      ),
                    ))
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput(){
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Email Address', style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium
            ),),
            const SizedBox(height: 12,),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset('assets/icon_email.png', width: 17,),
                    const SizedBox(width: 12,),
                    Expanded(child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Your Email Address',
                        hintStyle: subtitleTextStyle
                      )
                    ),),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin : const EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Password', style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium
            ),),
            const SizedBox(height: 12,),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset('assets/icon_password.png', width: 17,),
                    const SizedBox(width: 16,),
                    Expanded(child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Your Password',
                        hintStyle: subtitleTextStyle
                      ),
                    ))
                  ],
                ),
              ),
            )
          ],
        )
      );
    }

    Widget btnSignUp() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 70),
        child: TextButton(onPressed: (){
          Navigator.pushNamed(context, '/home');
        },
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          )
        ),
        child: Text('Sign Up', style: primaryTextStyle.copyWith(
          fontSize: 16,
          fontWeight: medium
        ),)),
      );
    }

    Widget footer(){
      return Container(
        height: 18,
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 30),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?', style: subtitleTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 12,
              ),),
              const SizedBox(width: 2,),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/sign-in');
                },
                child: Text('Sign In', style: purpleTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            nameInput(),
            usernameInput(),
            emailInput(),
            passwordInput(),
            btnSignUp(),
            const Spacer(),
            footer()
          ],
        ),
      )),
    );
  }
}
