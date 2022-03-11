import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        colorFilter: ColorFilter.mode(
            Colors.black45.withOpacity(0.6), BlendMode.dstATop),
        fit: BoxFit.cover,
        image: const AssetImage('assets/images/background.jpg'),
      )),
      child: SafeArea(
        child: Material(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    const Text(
                      'Registration Form',
                      style: TextStyle(fontSize: 35),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Join Us to explore new world'),
                    const SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      radius: 54,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        child: const Text(
                          'R',
                          style: TextStyle(color: Colors.white, fontSize: 44),
                        ),
                        radius: 50,
                        backgroundColor: Colors.orange.shade400,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      style: const TextStyle(),
                      decoration: InputDecoration(
                          isDense: true,
                          hintText: 'Enter Name Here',
                          label: const Text('Name'),
                          labelStyle: const TextStyle(fontSize: 20),
                          errorStyle: const TextStyle(color: Colors.red),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 2)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: Colors.blue, width: 2)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2))),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'This is a required Field';
                        }
                        if (value.length < 6) {
                          return 'Length should be greater than 6';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      style: const TextStyle(),
                      decoration: InputDecoration(
                          isDense: true,
                          hintText: 'Enter Email Here',
                          label: const Text('Email'),
                          labelStyle: const TextStyle(fontSize: 20),
                          errorStyle: const TextStyle(color: Colors.red),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 2)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: Colors.blue, width: 2)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2))),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'This is a required Field';
                        }
                        if (!(value.contains('@')) || !(value.contains('.'))) {
                          return 'Email should be valid form';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RawMaterialButton(
                      constraints: const BoxConstraints.tightFor(
                          width: double.infinity, height: 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      fillColor: Colors.pink.shade600,
                      hoverColor: Colors.pink.shade100,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState?.save();
                        }
                      },
                      child: const Text('Register',
                          style: TextStyle(fontSize: 20)),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
