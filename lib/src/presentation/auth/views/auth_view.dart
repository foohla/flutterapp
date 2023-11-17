import 'package:flutter/material.dart';
import 'package:flutterapp74/src/presentation/auth/widgets/social_button.dart';

class AuthConnector extends StatelessWidget {
  const AuthConnector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: ColoredBox(
              color: Colors.deepOrange.shade400,
              child: const Padding(
                padding: EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Title'),
                    Text('Description'),
                    SizedBox.shrink(),
                  ],
                ),
              ),
            ),
          ),

          /// Form
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox.shrink(),
                Column(
                  children: [
                    Text('Get Started'),
                    SocialButton(),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [Text('IED Exam'), Text('Privacy & Policy')],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
