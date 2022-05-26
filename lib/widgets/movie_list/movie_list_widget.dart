import 'package:flutter/material.dart';

class Movie {
  final int id;
  final String image;
  final String filmName;
  final String date;
  final String description;

  Movie(
      {required this.id,
      required this.image,
      required this.filmName,
      required this.date,
      required this.description});
}

class MovieListWidget extends StatefulWidget {
  const MovieListWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MovieListWidget();
}

class _MovieListWidget extends State<MovieListWidget> {
  final _movies = [
    Movie(
      id: 1,
      image: 'images/1.jpeg',
      filmName: 'Зверополис',
      date: '11 февраля 2016',
      description:
          'Добро пожаловать в Зверополис — современный город, населенный самыми разными животными, от огромных слонов до крошечных мышек. Зверополис разделен на районы, полностью повторяющие естественную среду обитания разных жителей — здесь есть и элитный район Площадь Сахары и неприветливый Тундратаун. В этом городе появляется новый офицер полиции, жизнерадостная зайчиха Джуди Хоппс, которая с первых дней работы понимает, как сложно быть маленькой и пушистой среди больших и сильных полицейских. Джуди хватается за первую же возможность проявить себя, несмотря на то, что ее партнером будет болтливый хитрый лис Ник Уайлд. Вдвоем им предстоит раскрыть сложное дело, от которого будет зависеть судьба всех обитателей Зверополиса.',
    ),
    Movie(
        id: 2,
        image: 'images/2.jpeg',
        filmName: 'Рапунцель: Запутанная история',
        date: '25 ноября 2010',
        description:
            'И казалось, фортуна всегда на его стороне, пока однажды он не выбирает высокую башню в густой чаще леса в качестве «спокойного» убежища. Флинн оказывается связанным по рукам и ногам юной красавицей по имени Рапунцель.'),
    Movie(
        id: 3,
        image: 'images/3.jpeg',
        filmName: 'Русалочка',
        date: '1989',
        description:
            'И самой невероятной из них была и остаётся история русалочки Ариэль. Дочь могущественного царя подводного мира Тритона, она однажды влюбляется в прекрасного и мужественного принца. Но разве они могут быть вместе — земной человек и морская дева? Однако настоящие чувства преодолевают любые преграды. ... Обзор. Таинственные глубины моря хранят немало тайн, а обитатели океана могут рассказать множество удивительных историй. И самой невероятной из них была и остаётся история русалочки Ариэль. Дочь могущественного царя подводного мира Тритона, она однажды влюбляется в прекрасного и мужественного принца. Но разве они могут быть вместе — земной человек и морская дева?'),
    Movie(
        id: 4,
        image: 'images/4.jpeg',
        filmName: 'Холодное сердце',
        date: '2013',
        description:
            'Когда древнее предсказание сбывается и королевство погружается в объятия вечной зимы, трое бесстрашных героев - принцесса Анна, отважный Кристофф и его верный олень Свен - отправляются в горы, чтобы найти сестру Анны, Эльзу, которая может снять со страны леденящее заклятие. По пути их ждет множество увлекательных сюрпризов и захватывающих приключений: встреча с мистическими троллями, знакомство с очаровательным снеговиком по имени Олаф, горные вершины покруче Эвереста и магия в каждой снежинке. Анне и Кристоффу предстоит сплотиться и противостоять могучей стихии, чтобы спасти королевство и тех..'),
    Movie(
        id: 5,
        image: 'images/5.jpeg',
        filmName: 'Холодное сердце 2',
        date: '2019',
        description:
            'Анна, Эльза, Кристоф, его верный олень Свен и никогда не унывающий снеговик Олаф должны будут покинуть уютное королевство Эренделл и отправиться ещё дальше на север, в путешествие, которое приведет их к истокам древних легенд и поможет раскрыть тайны, касающиеся прошлого их родной страны.'),
    Movie(
        id: 6,
        image: 'images/6.jpeg',
        filmName: 'Энканто',
        date: '2021',
        description:
            'Удивительная семья Мадригаль живет в спрятанном в горах Колумбии волшебном доме, расположенном в чудесном и очаровательном уголке под названием Энканто. Каждого ребёнка в семье Мадригаль магия этого места благословила уникальным даром — от суперсилы до способности исцелять. Увы, магия обошла стороной одну лишь юную Мирабель. Обнаружив, что магия Энканто находится в опасности, Мирабель решает, что именно она может быть последней надеждой на спасение своей особенной семьи.'),
  ];
  var _filter = <Movie>[];

  bool search = true;

  final _searchNamedController = TextEditingController();

  void _searchMovies() {
    if (_searchNamedController.text.isNotEmpty) {
      _filter = _movies.where((Movie movie) {
        return movie.filmName
            .toLowerCase()
            .contains(_searchNamedController.text.toLowerCase());
      }).toList();
    } else {
      _filter = _movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    _filter = _movies;
    // TODO: implement initState
    _searchNamedController.addListener((_searchMovies));
  }

  void _tapToMovie(int index) {
    final id = _movies[index].id;
    // Navigator.pushNamed(context, '/main_screen/movie_details', arguments: 'id');

    Navigator.of(context)
        .pushNamed('/main_screen/movie_details', arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: search ? EdgeInsets.only(top: 70) : null,
          itemCount: _filter.length,
          itemExtent: 163,
          itemBuilder: (BuildContext context, int index) {
            final movie = _filter[index];
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(9, 53, 88, 1.0),
                        border:
                            Border.all(color: Color.fromRGBO(2, 27, 47, 1.0)),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(2, 3),
                          )
                        ]),
                    clipBehavior: Clip.hardEdge,
                    child: Row(
                      children: [
                        Image(image: AssetImage(movie.image)),
                        SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              Text(
                                movie.filmName,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 5),
                              Text(
                                movie.date,
                                style: TextStyle(color: Colors.grey),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 20),
                              Text(
                                movie.description,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Colors.white70),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () => _tapToMovie(index),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        if (search == true) ...[
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: _searchNamedController,
              decoration: InputDecoration(
                labelText: 'Поиск',
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(3, 37, 65, 1))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
                filled: true,
                fillColor: Colors.white.withAlpha(235),
                prefixIcon: Icon(
                  Icons.search,
                  // color: Color.fromRGBO(3, 37, 65, 1),
                ),
              ),
            ),
          )
        ]
      ],
    );
  }

//  child: InkWell(
//               splashColor: Colors.blueAccent.shade100,
//               onTap: () {},
}
