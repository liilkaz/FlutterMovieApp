import 'package:flutter/material.dart';
import 'package:movie/widgets/authorization/auth_widget.dart';
import 'package:movie/widgets/main_screen/main_screen_widget.dart';
import 'package:movie/widgets/movie_details/movie_details_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie',
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(backgroundColor: Color.fromRGBO(3, 37, 65, 1)),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color.fromRGBO(3, 37, 65, 1),
          selectedItemColor: Colors.lightBlue,
          unselectedItemColor: Colors.grey,
        ),
      ),
      routes: {
        '/auth': (context) => const Authorization(),
        '/main_screen': (context) => const MainScreenWidget(),
        '/main_screen/movie_details': (context) {
          final id = ModalRoute.of(context)?.settings.arguments;
          if (id is int) {
            return MovieDetailsWidget(id: id);
          } else
            return MovieDetailsWidget(id: 0);
        },
      },
      initialRoute: '/auth',
      // onGenerateRoute: (RouteSettings) {
      //   return MaterialPageRoute<void>(
      //     builder: (context) {
      //       return Scaffold(
      //         body: Center(
      //           child: Text(
      //             'Упс...ошибочка вышла',
      //             style: TextStyle(fontSize: 20),
      //           ),
      //         ),
      //       );
      //     },
      //   );
      // },
    );
  }
}
