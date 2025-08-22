import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("إنشاء حساب")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "الاسم"),
            ),
            SizedBox(height: 16),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: "البريد الإلكتروني"),
            ),
            SizedBox(height: 16),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: "كلمة السر"),
              obscureText: true,
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // هنا يمكن إضافة عملية إنشاء الحساب
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("تم إنشاء الحساب بنجاح")),
                );
                Navigator.pop(context);
              },
              child: Text("إنشاء الحساب"),
            ),
          ],
        ),
      ),
    );
  }
}
