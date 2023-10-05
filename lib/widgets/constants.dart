import 'package:flutter/material.dart';

// Colors
const kBackgroundColor = Color(0xff191720);
const kTextFieldFill = Color(0xff1E1C24);
// TextStyles
const kHeadline = TextStyle(
  color: Colors.white,
  fontSize: 34,
  fontWeight: FontWeight.bold,
);

const kBodyText = TextStyle(
  color: Colors.grey,
  fontSize: 15,
);

const kButtonText = TextStyle(
  color: Colors.black87,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

const kBodyText2 =
    TextStyle(fontSize: 28, fontWeight: FontWeight.w500, color: Colors.white);

class MyTextButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onTap;
  final Color bgColor;
  final Color textColor;

  MyTextButton({
    required this.buttonName,
    required this.onTap,
    required this.bgColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        primary: bgColor,
        onPrimary: textColor,
      ),
      child: Text(buttonName),
    );
  }
}

class MyPasswordField extends StatelessWidget {
  final bool isPasswordVisible;
  final VoidCallback onTap;

  MyPasswordField({
    required this.isPasswordVisible,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !isPasswordVisible,
      decoration: InputDecoration(
        hintText: 'Password',
        suffixIcon: IconButton(
          icon: Icon(
            isPasswordVisible ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey,
          ),
          onPressed: onTap,
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  final String hintText;
  final TextInputType inputType;
  final Color hintTextColor; // Added hint text color
  final Color textColor; // Added text color

  const MyTextField({
    required this.hintText,
    required this.inputType,
    this.hintTextColor = Colors.grey, // Default hint text color
    this.textColor = Colors.white,
    required TextStyle style, // Default text color
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
      ),
      keyboardType: inputType,
    );
  }
}

String lottieURL = 'assets/lottie/ani2.json';
