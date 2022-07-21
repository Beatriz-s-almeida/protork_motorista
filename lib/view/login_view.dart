import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_model/login_provider.dart';
import 'home_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _showPassword = false;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  // final LoginController _controller = LoginController();
  // var login = LoginModel();
  bool isValidated = false;

  @override
  Widget build(BuildContext context) {
    LoginProvider provider =
    Provider.of<LoginProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Padding(
                padding:
                const EdgeInsets.only(left: 63, top: 199.45, right: 63),
                child: Image.asset(
                  ('assets/images/LOGOPROTORK.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Insira um valor";
                    }
                  },
                  onSaved: (value) {
                    provider.setUsername = value ?? '';
                  },
                  decoration: const InputDecoration(
                    labelText: 'CPF',
                    hintText: '000.000.000-00',
                  ),
                  keyboardType: const TextInputType.numberWithOptions(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32),
                child: TextFormField(
                    onSaved: (value) {
                      provider.setPassword = value ?? '';
                    },
                    validator: (value) {
                      // if (value!.isEmpty) {
                      //   return "Insira um valor";
                      // }
                    },
                    decoration: InputDecoration(
                        labelText: 'SENHA',
                        suffixIcon: GestureDetector(
                          child: Icon(
                            _showPassword == false
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                          ),
                          onTap: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                        )),
                    obscureText: _showPassword == false ? true : false),
              ),
              SizedBox(
                height: 43,
                width: 340,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color?>(Colors.yellow),
                  ),
                  onPressed: () async {
                    if (_formkey.currentState!.validate()) {
                      _formkey.currentState!.save();
                      await provider.postLogin();
                      if(provider.status == 2) {
                        print("erro aqui");

                        return;
                      }

                      // if (result == true) {
                      setState(() {
                        // isValidated == true;
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeApp()),
                        );
                      });
                    } else {
                      print('erro');
                    }
                  },
                  child: const Text(
                    'ENTRAR',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 2),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  textStyle: const TextStyle(fontSize: 16),
                ),
                onPressed: () {},
                child: const Text('Esqueci a senha'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
