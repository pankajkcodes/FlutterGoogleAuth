import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_auth/services/auth_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var uid = '';
  var name = '';
  var email = '';

  AuthServices authServices = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Firebase Auth"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                authServices.logOut().then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("logout Successfully")));
                  setState(() {

                  });
                });
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Text("UID : ${authServices.user!.uid}"),
            const SizedBox(
              height: 20,
            ),
            Text("Name: ${authServices.user!.displayName}"),
            const SizedBox(
              height: 20,
            ),
            Text("Mail: ${authServices.user!.email}"),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  authServices.loginUsingGoogle(context).then((value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Signin Successfully")));
                  });
                },
                child: const Text("Signin with google")),
          ],
        ),
      ),
    );
  }
}
