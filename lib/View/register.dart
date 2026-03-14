import 'package:flutter/material.dart';
import 'package:guidedlayout2_2338/View/login.dart';
import 'package:guidedlayout2_2338/component/form_component.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterViewState()> {
  // untuk validasi harus menggunakan GlobalKey
  final _formKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController notelController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          keu: _formKey,
          child: Column(
            mainAxisAlignment: mainAxisAlignment.center,
            childer: [
              inputForm(
                (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return 'Username Tidak Boleh Kosong';
                  }
                  if (p0.toLowerCase() == 'anjing') {
                    return 'Tidak Boleh Menggunakan Kata Kasar';
                  }
                  return null;
                },
                controller: usernameController,
                hintTxt: "Username",
                helperTxt: "Ucup Serucup",
                iconData: Icons.person),
              inputForm(
                ((p0) {
                  if (p0 == null || p0.isEmpty) {
                    return 'Email Tidak Boleh Kosong';
                  }
                  if (!p0.contains('@')) {
                    return 'Email harus menggunakan @';
                  }
                  return null;
                }),
                controller: emailController,
                hintTxt: "Email",
                helperTxt: "ucup@gmail.com",
                iconData: Icons.email),
              inputForm(
                // pola validasi lebih detail bisa menggunakan regex
                ((p0) {
                  if (p0 == null || p0.isEmpty) {
                    return 'Password Tidak Boleh Kosong';
                  }
                  if (p0.length<5) {
                    return 'Password minimal 5 digit';
                  }
                  return null;
                }),
                controller: passwordController,
                hintTxt: "Password",
                helperTxt: "xxxxxxx",
                iconData: Icons.password,
                password: true),
              inputForm(
                ((p0) {
                  // untuk menglihat penggunaan regex, uncoment baris dibawah yang dicoment
                  // final RegEXP regex = Register
                  if (p0 == null || p0.isEmpty) {
                    return 'Nomor Telepon Tidak Boleh Kosong';
                  }
                  return null;
                }),
                controller: emailController,
                hintTxt: "Email",
                helperTxt: "ucup@gmail.com",
                iconData: Icons.email),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Map<String,dynamic> formData = {};
                    formData['username'] = usernameController.text;
                    formData['password'] = passwordController.text;
                    Navigator.push(context, MaterialPageRoute(builder: (_) => LoginView(data: formData,)) );
                  }
                },
                child: const Text('Register'))
            ],
          ),
        ),
      ),
    );
  }
}
