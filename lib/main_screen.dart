import 'package:flutter/material.dart';
import 'package:login_page_sample/inner_main_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController _emailSample = TextEditingController();
  TextEditingController _passwordSample = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20,bottom: 20),
              height:100,
              width: 100,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/passportsize.jpg'),
                    fit: BoxFit.cover,
                  ),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: const Text('Welcome To My App!',style: TextStyle(color: Colors.black87,fontSize: 12),),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20,left: 40,right: 40),
              child: TextField(
                controller: _emailSample,
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  hintText: "Email",
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20,left: 40,right: 40),
              child: TextField(
                controller: _passwordSample,
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  hintText: "Password",
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: ElevatedButton(
                      onPressed: (){
                        var _email = _emailSample.text;
                        var _password = _passwordSample.text;

                        print("Email: " + _email);
                        print("Password: " + _password);
                      },
                      child: const Text('Login'),
                    ),
                  ),
                  Container(
                    child: OutlinedButton(
                      onPressed: (){
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const InnerMainScreen()));
                        });
                      },
                      child: const Text("Signup"),
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
