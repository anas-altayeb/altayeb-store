import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String? text;
  final String imageName;
  final VoidCallback onPress;

  const SocialButton({
    super.key,
    this.text,
    required this.imageName,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(300), color: Colors.grey.shade200),
      child: MaterialButton(
        minWidth: 90,
        height: 60,
        onPressed: onPress,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(300)),
        child:Image.asset(imageName),
      ),
    );
  }
}
