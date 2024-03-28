import 'package:flutter/material.dart';
import 'login_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.black,
      ),

      //body
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 150.0),
            Image.asset(
              'assets/images/spotify_logoW.png',
              width: 90.0,
              height: 90.0,
            ),
            const SizedBox(height: 35.0),
            const Text(
              'Millions of Songs.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Free on Spotify.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 35.0),
            //sign for free container inside children
            Container(
              width: 300.0,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 40, 255, 2),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: const Text(
                'Sign up free',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            //continue with google container
            Container(
              width: 300.0,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.black,
                border: Border.all(
                  color: Colors.white, // Set border color to white
                  width: 2.0, // Set border width
                ),
              ),
              //row for logo and text
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/google_logo.png',
                    width: 30.0,
                    height: 30.0,
                  ),

                  const SizedBox(width: 30.0),
                  //Continue with google text
                  const Text(
                    'Continue with Google',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),

            //facebook container
            Container(
              width: 300.0,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
              //row for logo and text
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/fb_logo.png',
                    width: 30.0,
                    height: 30.0,
                  ),

                  const SizedBox(width: 30.0),
                  //Continue with facebook text
                  const Text(
                    'Continue with Facebook',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20.0),
            //log in
            GestureDetector(
              onTap: () {
                // Show confirmation dialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Confirmation'),
                      content: Text('Are you sure you want to log in?'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            // Navigate to login page
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage()),
                            );
                            //Toast
                            showToast('Successfully Redirected');
                          },
                          child: Text('Log In'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                alignment: Alignment.center,
                child: const Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Function to show the toast message after successfully redirect
void showToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.black,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
