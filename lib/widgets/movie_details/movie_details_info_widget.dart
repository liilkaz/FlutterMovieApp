import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MovieDetailsInfoWidget extends StatelessWidget {
  const MovieDetailsInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PosterWidget(),
        Padding(padding: EdgeInsets.all(15), child: FilmNameWidget()),
        AdditionInfoWidget(),
        MovieViewingButtonWidget(),
        InfoCard(),
        DetailsWidget(),
      ],
    );
  }
}

class PosterWidget extends StatelessWidget {
  const PosterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('images/zv2.jpeg'),
      // width: 1000,
      height: 200,
      fit: BoxFit.cover,
    );
  }
}

class FilmNameWidget extends StatelessWidget {
  const FilmNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'Зверополис',
        style: TextStyle(
            fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      Padding(
        padding: EdgeInsets.only(top: 8),
        child: Text(
          'Zootopia',
          style: TextStyle(fontSize: 17, color: Colors.grey),
        ),
      ),
    ]);
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Отважная крольчиха делает карьеру в полиции звериного города. Оскароносная комедия с серьезным подтекстом',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25),
            Text(
                'Добро пожаловать в Зверополис – современный город, населенный самыми разными животными, от огромных слонов до крошечных мышек. Зверополис разделен на районы, полностью повторяющие естественную среду обитания разных жителей – здесь есть и элитный район Площадь Сахары и неприветливый Тундратаун. В этом городе появляется новый офицер полиции, жизнерадостная зайчиха Джуди Хоппс, которая с первых дней работы понимает, как сложно быть маленькой и пушистой среди больших и сильных полицейских. Джуди хватается за первую же возможность проявить себя, несмотря на то, что ее партнером будет болтливый хитрый лис Ник Уайлд. Вдвоем им предстоит раскрыть сложное дело, от которого будет зависеть судьба всех обитателей Зверополиса.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
                maxLines: 3,
                overflow: TextOverflow.ellipsis),
            TextButton(
              onPressed: () {},
              child: Text(
                'Полное описание',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color.fromRGBO(2, 27, 47, 1.0)),
                // textAlign: TextAlign.start,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MovieViewingButtonWidget extends StatelessWidget {
  const MovieViewingButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20, top: 20),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 0.5),
            borderRadius: BorderRadius.circular(25),
            color: Colors.white),
        child: FloatingActionButton.extended(
          onPressed: () {},
          label: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Text(
              'Cмотреть фильм',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Color.fromRGBO(9, 53, 88, 1.0),
          icon: Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}

class AdditionInfoWidget extends StatelessWidget {
  const AdditionInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text('8.3',
          style: TextStyle(
              color: Colors.green, fontWeight: FontWeight.bold, fontSize: 18)),
      SizedBox(width: 7),
      Text(
        '718K',
        style: TextStyle(color: Colors.grey, fontSize: 18),
      ),
      SizedBox(width: 7),
      Icon(Icons.grass, color: Color(0xffeab75e)),
      GradientText('ТОП 250',
          style: TextStyle(fontSize: 18),
          gradientType: GradientType.linear,
          colors: [
            Color(0xffdcaa54),
            Color(0xffb6842e),
            Color(0xff996916),
          ]),
    ]);
  }
}

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 30),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Детали',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Table(
              children: [
                TableRow(
                  children: [
                    TableCell(
                      child: SizedBox(
                        height: 60,
                        child: Text(
                          'Аудиодорожки',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    Text(
                      'Русский, Русский 5.1, Английский, Английский 5.1',
                      maxLines: 3,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: SizedBox(
                        height: 40,
                        child: Text(
                          'Субтитры',
                          maxLines: 1,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    Text(
                      'Русские, Английские',
                      maxLines: 2,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: SizedBox(
                        height: 40,
                        child: Text(
                          'Качество видео',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.hd_outlined,
                      color: Colors.white,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
