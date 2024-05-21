import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _checked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final focus = FocusScope.of(context);
        final focusedChild = focus.focusedChild;
        if (focusedChild != null && !focusedChild.hasPrimaryFocus) {
          focusedChild.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
        ),
        body: Container(
          padding: const EdgeInsets.all(35),
          child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: [
              const LinearProgressIndicator(value: 0.35),
              const Text(
                'Cuéntanos más de ti',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Verifica que toda tu informacion este correcta',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('¿Cuál es tu tipo de documento?'),
              const TextField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Cual es tu numero de documento'),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Cual es tu nombre y apellidos'),
              const TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ))),
              const SizedBox(
                height: 20,
              ),
              const Text('Cual es tu fecha de nacimiento'),
              const TextField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ))),
              const SizedBox(
                height: 20,
              ),
              const Text('¿En que ciudad vives?'),
              const TextField(
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  )),
              const SizedBox(
                height: 20,
              ),
              const Text('¿Cual es tu numero de celular?'),
              const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Ingresa tu numero',
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ))),
              const SizedBox(
                height: 20,
              ),
              const Text('¿Cual es tu correo electronico?'),
              const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'Ingresa tu correo',
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ))),
              const SizedBox(
                height: 40,
              ),
              Container(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _checked = !_checked;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        child: Checkbox(
                          value: _checked,
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          onChanged: (value) {
                            if (value != null) {
                              setState(() {
                                _checked = value;
                              });
                            }
                          },
                        ),
                      ),
                      Container(
                        child: const Expanded(
                            child: Text(
                                'Aceptas los terminos legales del producto y el tratamiento de tus datos personales por Itaú')),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: MaterialButton(
                    textColor: Colors.white,
                    onPressed: () {},
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      'Continuar con el registro',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
