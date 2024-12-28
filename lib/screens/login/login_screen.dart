import 'package:flutter/material.dart';
import 'package:halli_mart/components/CustomTextField%20.dart';
import 'package:halli_mart/utils/textController.dart';

class LoginPage extends StatelessWidget with MixBusiness {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the current theme
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(flex: 2),
            // Logo
            Center(
              child: Icon(
                Icons.fastfood,
                size: 100,
                color: Color(0xFF4FA64F),
              ),
            ),
            const Spacer(flex: 1),
            // Title
            Text(
              "Login to continue",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            // Mobile Number / Email Text Field
            CustomTextField(
              hintText: "Enter your mobile number",
              controller: getTextController("mobile")!,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            // Get OTP Button
            ElevatedButton(
              onPressed: () {
                // Add navigation or OTP functionality here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF4FA64F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(
                "Get OTP",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Terms and Conditions
            Center(
              child: Text(
                "By continuing, you agree to our Terms & Conditions and Privacy Policy.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color:
                      isDarkMode ? Colors.grey.shade400 : Colors.grey.shade700,
                ),
              ),
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
