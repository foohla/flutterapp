import 'package:flutter/material.dart';
import 'package:flutterapp74/src/core/constants.dart';
import 'package:flutterapp74/src/presentation/auth/widgets/social_button.dart';

class AuthConnector extends StatefulWidget {
  const AuthConnector({super.key});

  @override
  State<AuthConnector> createState() => _AuthConnectorState();
}

class _AuthConnectorState extends State<AuthConnector> {
  @override
  void initState() {
    super.initState();
    print(supabase.auth.currentUser);
  }

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
                    Text(
                      'Title',
                      style: TextStyle(
                        fontSize: 80.0, // Dimensione del titolo
                        fontWeight: FontWeight.bold, // Grassetto
                        color: Colors.white, // Colore bianco
                        fontFamily: 'Helvetica', // Font Helvetica
                      ),
                    ),
                    Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 48.0, // Dimensione della descrizione
                        color: Colors.white, // Colore bianco
                        fontFamily: 'Helvetica', // Font Helvetica
                      ),
                    ),
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
                    Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 18.0, // Dimensione del titolo
                        fontWeight: FontWeight.bold, // Grassetto
                        color: Colors.white, // Colore bianco
                        fontFamily: 'Helvetica', // Font Helvetica
                      ),
                    ),
                    SocialButton(),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'IED Exam',
                        style: TextStyle(
                          fontSize: 18.0, // Dimensione del titolo
                          color: Colors.white, // Colore bianco
                          fontFamily: 'Helvetica', // Font Helvetica
                        ),
                      ),
                      Text(
                        'Privacy & Policy',
                        style: TextStyle(
                          fontSize: 18.0, // Dimensione del titolo
                          color: Colors.white, // Colore bianco
                          fontFamily: 'Helvetica', // Font Helvetica
                        ),
                      ),
                    ],
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
