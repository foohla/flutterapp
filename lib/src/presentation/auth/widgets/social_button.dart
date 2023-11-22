import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SocialButton extends StatefulWidget {
  const SocialButton({super.key});

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  var isHovered = false;

  void signIn() {
    Supabase.instance.client.auth
        .signInWithOAuth(Provider.github, redirectTo: Uri.base.origin);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: signIn,
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHovered = false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          height: isHovered ? 64 : 56,
          width: isHovered ? 128 : 112,
          decoration: BoxDecoration(
            color: isHovered ? Colors.deepOrange.shade700 : Colors.deepOrange,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Text('Continue'),
          ),
        ),
      ),
    );
  }
}
