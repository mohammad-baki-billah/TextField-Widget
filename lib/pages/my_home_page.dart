import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 10,
                shadowColor: Colors.orange,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.orange,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.orange,
                        width: 2,
                      ),
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.orange,
                    ),
                    // suffixText: 'Enter your email',
                    suffixStyle: TextStyle(color: Colors.orange),
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.orange,
                    ),

                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(11),
                    //   borderSide: BorderSide(
                    //     color: Colors.deepOrange,
                    //     width: 2,
                    //   ),
                    // ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Card(
                elevation: 10,
                shadowColor: Colors.orange,
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  obscureText: true,
                  obscuringCharacter: '*',
                  //enabled: false,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.orange,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.pink,
                        width: 2,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11.0),
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),
                    //suffixText: 'Username Exsists',

                    // suffixStyle: TextStyle(
                    //   color: Colors.orange,
                    // ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.orange,
                      ),
                      onPressed: () {},
                    ),
                    prefixIcon: Icon(
                      Icons.password,
                      color: Colors.orange,
                    ),
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(11),
                    //   borderSide: BorderSide(
                    //     color: Colors.pinkAccent,
                    //     width: 2,
                    //   ),
                    // ),
                  ),
                ),
              ),
              Card(
                elevation: 10,
                shadowColor: Colors.orange,
                child: ElevatedButton(
                  onPressed: () {
                    String userEmail = emailController.text.toString();
                    String userPassword = passwordController.text;

                    print("Email:$userEmail, Password:$userPassword");
                  },
                  child: Text(
                    'LogIn',
                    style: TextStyle(color: Colors.orange, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
