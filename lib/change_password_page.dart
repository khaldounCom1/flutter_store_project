import 'package:flutter/material.dart';

class ChangePasswordPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("تغيير كلمة السر")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: "البريد الإلكتروني"),
            ),
            SizedBox(height: 16),
            TextField(
              controller: oldPasswordController,
              decoration: InputDecoration(labelText: "كلمة السر القديمة"),
              obscureText: true,
            ),
            SizedBox(height: 16),
            TextField(
              controller: newPasswordController,
              decoration: InputDecoration(labelText: "كلمة السر الجديدة"),
              obscureText: true,
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // هنا يمكن إضافة عملية تغيير كلمة السر
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("تم تغيير كلمة السر بنجاح")),
                );
                Navigator.pop(context);
              },
              child: Text("تغيير كلمة السر"),
            ),
          ],
        ),
      ),
    );
  }
}
