import 'package:finger_print_auth/successful_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:local_auth/local_auth.dart';

import 'local_auth.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // // LocalAuthentication localAuth = LocalAuthentication();
    // bool _canCheckBiometric;
    // List<BiometricType> _availableBiometric;
    // String authorized = "Nit Authorized";

    // Future<void> checkBiometric() async {
    //   bool canCheckBiometric = false;
    //   try {
    //     canCheckBiometric = await localAuth.canCheckBiometrics;
    //   } catch (e) {
    //     print(e);
    //   }
    //   if (!mounted) return;
    //   setState(() {
    //     _canCheckBiometric = canCheckBiometric;
    //   });
    // }

    // Future<void> getAvailableBiometric() async {
    //   List<BiometricType> availableBiometric = [];
    //   try {
    //     availableBiometric = await localAuth.getAvailableBiometrics();
    //   } catch (e) {
    //     print(e);
    //   }
    //   setState(() {
    //     _availableBiometric = availableBiometric;
    //   });
    // }

    // Future<void> authenticate() async {
    //   bool authenticated = false;
    //   try {} catch (e) {}
    // }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container(
            //   height: 100,
            //   child: Image.network(
            //       // "data:image/png;base64,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"),
            // ),
            SizedBox(height: 20),
            Text(
              "FingerPrint Auth",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 20),
            Text("Login through your finger print"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                bool isAuthenticated =
                    await LocalAuth.authenticateWithBiometrics();
                // await localAuth.authenticateWithBiometrics();
                try {
                  if (isAuthenticated) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SuuccessFulLogin(),
                      ),
                    );
                  }
                } catch (e) {
                  print(e);
                }
              },
              child: Text("Authenticate"),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.blue[900]),
            )
          ],
        ),
      ),
    );
  }
}
