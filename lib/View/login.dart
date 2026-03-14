import 'package:flutter/material.dart';

import 'package:guidedlayout2_2338/View/home.dart';
import 'package:guidedlayout2_2338/View/register.dart';
import 'package:guidedlayout2_2338/component/form_component.dart';

class LoginView extends StatefulWidget {
  // variabel map data dibuat bersifat nullable, karena ketika aplikasi dijalankan (dipanggil dari main, tidak ada data yang dibawa)
  // data memiliki nilai ketika registrasi berhasil dilakukan
  final Map? data;

  const LoginView({super.key, this.data});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // textEditingController
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    // widget mengacu pada instance/object LoginView
    Map? dataForm = widget.data;
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // username
              inputForm((p0) {
                if (p0 == null || p0.isEmpty) {
                  return "username tidak boleh kosong";
                }
                return null;
              },
                controller: usernameController,
                hintTxt: "Username",
                helperTXT: "Inputkan User yang telah terdaftar",
                iconData: Icons.person),
              
              // password
              inputForm((p0) {
                if (p0 == null || p0.isEmpty) {
                  return "password kosong";
                }
                return null;
              },
                controller: passwordController,
                hintTxt: "Password",
                helperTXT: "Inputkan password",
                iconData: Icons.password),

              // baris yang berisi tombol login dan tombol mengarah kehalaman register
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // tombol login
                  ElevatedButton(
                    // fungsi yang dijalankan saat tombol ditekan
                    onPressed: () {
                      // cek statenya sudah valid atau belum valid
                      if (_formKey.currentState.validate()) {
                        // jika sudah valid, cek username dan password yang diinputkan pada form telah sesuai dengan data yang dibawa dari halaman register atau belum
                        if (dataForm!['username'] == usernameController.text && dataForm['password'] == passwordController.text) {
                          // jika sesuai navigasi ke halaman home
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>const HomeView()));
                        }else{
                          // jika belum tampilkan alert dialog
                          showDialog(context: context, builder: (_)=>AlertDialog(
                            title: const Text('Password Salah'),
                            // isi alert diaolog
                            content: TextButton(
                              // pushRegister(context) fungsi pada baris 118-124 untuk meminimalkan nested code
                              onPressed: () =>pushRegister(context),
                              child: const Text('Daftar Disini !!')),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'Cancel'),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),);
                        }
                      }
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  void pushRegister(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (_) => const RegisterView(),),);
  }
}