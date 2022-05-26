import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Authorization extends StatefulWidget {
  const Authorization({Key? key}) : super(key: key);

  @override
  State<Authorization> createState() => _AuthorizationState();
}

class _AuthorizationState extends State<Authorization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Movie'),
        ),
        body: ListView(
          children: [
            _ImageWidget(),
            SizedBox(height: 20),
            _FormWidget(),
            SizedBox(height: 6),
            // _ResetWidget(),
            // _ButtonWidget(),
            SizedBox(height: 30),
            _SignUpWidget(),
          ],
        ));
  }
}

class _ImageWidget extends StatelessWidget {
  const _ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
            width: 280,
            height: 280,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        '/Users/tacarlen/Downloads/flame-1688.png'))),
          ),
          const Text(
            'SIGN IN',
            style: TextStyle(
              fontSize: 40,
              color: Color.fromRGBO(3, 37, 65, 1),
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({Key? key}) : super(key: key);

  @override
  State<_FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  bool obscure = true;
  final textStyle = const TextStyle(
      fontSize: 17, color: Colors.black, fontStyle: FontStyle.italic);
  final _usernameController = TextEditingController(text: 'lol');
  final _passwordController = TextEditingController(text: '123');
  String? errorText; //////
  bool error = false;

  void _signIn() {
    final username = _usernameController.text;
    final password = _passwordController.text;
    if (username == 'lol' && password == '123') {
      errorText = null;
      error = false;
      Navigator.of(context).pushNamed('/main_screen');
      // Navigator.of(context).push(
      //     MaterialPageRoute<void>(builder: (context) => MainScreenWidget()));
    } else {
      errorText = 'Неверный логин или пароль';
      error = true;
    }
    setState(() {});
  }

  void _forgotPass() {}

  void _signUp() {}

  void _iconChange() {
    if (obscure) {
      setState(() {
        obscure = false;
      });
    } else {
      setState(() {
        obscure = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (errorText != null) ...[
            Text(
              errorText,
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(
              height: 20,
            ),
          ],
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(color: error ? Colors.red : Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(color: error ? Colors.red : Colors.grey),
              ),
              labelText: 'Username',
            ),
          ),
          SizedBox(
            height: 25,
          ),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(color: error ? Colors.red : Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(color: error ? Colors.red : Colors.grey),
              ),
              labelText: 'Password',
              suffixIcon: Align(
                widthFactor: 1.5,
                heightFactor: 1.0,
                child: IconButton(
                    onPressed: _iconChange,
                    icon: Icon(
                        obscure ? Icons.visibility_off : Icons.visibility)),
              ),
              // prefixIcon: Icon(Icons.visibility_off),
            ),
            obscureText: obscure ? true : false,
            obscuringCharacter: '*',
          ),
          Container(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'FORGOT PASSWORD?',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: _signIn,
            child: Text(
              'SIGN IN',
              style: TextStyle(fontSize: 18),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromRGBO(3, 37, 65, 1)),
              overlayColor: MaterialStateProperty.all(Colors.lightBlue),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              minimumSize: MaterialStateProperty.all(Size(350, 55)),
            ),
          ),
        ],
      ),
    );
  }
}

// class _ResetWidget extends StatelessWidget {
//   const _ResetWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           TextButton(
//             onPressed: () {},
//             child: Text(
//               'FORGOT PASSWORD?', style: TextStyle(fontSize: 12),
//               // textAlign: TextAlign.end,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _ButtonWidget extends StatelessWidget {
//   const _ButtonWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 16),
//       child: ElevatedButton(
//         onPressed: _FormWidgetState()._signIn,
//         child: Text(
//           'SIGN IN',
//           style: TextStyle(fontSize: 18),
//         ),
//         style: ButtonStyle(
//           backgroundColor:
//               MaterialStateProperty.all(Color.fromRGBO(3, 37, 65, 1)),
//           overlayColor: MaterialStateProperty.all(Colors.lightBlue),
//           shape: MaterialStateProperty.all(
//             RoundedRectangleBorder(
//               side: const BorderSide(color: Colors.grey),
//               borderRadius: BorderRadius.circular(30),
//             ),
//           ),
//           minimumSize: MaterialStateProperty.all(Size(5, 55)),
//         ),
//       ),
//     );
//   }
// }

class _SignUpWidget extends StatelessWidget {
  const _SignUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "DON'T HAVE ACCOUNT?",
          style: TextStyle(fontSize: 15),
        ),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          child: Text(
            'SIGN UP',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}
