import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_auth/services/auth_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var uid = 'Your UID';
  var name = 'Your Name';
  var email = 'Your Email';

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
            Text("UID : $uid"),
            const SizedBox(
              height: 20,
            ),
            Text("Name: $name"),
            const SizedBox(
              height: 20,
            ),
            Text("Mail: $email"),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  authServices.loginUsingGoogle(context).then((value) {
                    setState(() {
                      uid = authServices.user!.uid;
                      name = authServices.user!.displayName!;
                      email = authServices.user!.email!;

                    });
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
