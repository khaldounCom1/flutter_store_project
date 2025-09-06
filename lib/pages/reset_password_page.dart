import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final _current = TextEditingController();
  final _new = TextEditingController();
  final _confirm = TextEditingController();
  bool _o1 = true, _o2 = true, _o3 = true;

  @override
  void dispose() {
    _current.dispose();
    _new.dispose();
    _confirm.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تغيير كلمة السر')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _current,
                  obscureText: _o1,
                  decoration: InputDecoration(
                    labelText: 'كلمة السر الحالية',
                    prefixIcon: const Icon(Icons.lock_clock),
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () => setState(() => _o1 = !_o1),
                      icon: Icon(_o1 ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                  validator: (v) => (v == null || v.isEmpty) ? 'الحقل مطلوب' : null,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _new,
                  obscureText: _o2,
                  decoration: InputDecoration(
                    labelText: 'كلمة السر الجديدة',
                    prefixIcon: const Icon(Icons.lock),
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () => setState(() => _o2 = !_o2),
                      icon: Icon(_o2 ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                  validator: (v) =>
                      (v == null || v.length < 6) ? 'على الأقل 6 أحرف' : null,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _confirm,
                  obscureText: _o3,
                  decoration: InputDecoration(
                    labelText: 'تأكيد كلمة السر الجديدة',
                    prefixIcon: const Icon(Icons.lock_outline),
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () => setState(() => _o3 = !_o3),
                      icon: Icon(_o3 ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                  validator: (v) => (v != _new.text) ? 'غير مطابقة' : null,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('تم تغيير كلمة السر بنجاح')),
                      );
                      Navigator.pop(context);
                    }
                  },
                  child: const Text('حفظ التغييرات'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
