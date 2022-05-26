import 'package:flutter/material.dart';

class ActorsWidget extends StatelessWidget {
  const ActorsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Актёры',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            '76',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(37, 58, 130, 1.0)),
                          ),
                          Icon(Icons.chevron_right,
                              color: Color.fromRGBO(37, 58, 130, 1.0)),
                        ],
                      )),
                ],
              )),
          SizedBox(
            height: 400,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemExtent: 280,
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return Column(children: [
                    ActorCardWidget(),
                    ActorCardWidget(),
                    ActorCardWidget()
                  ]);
                  // return Padding(
                  //   padding: EdgeInsets.all(8),
                  //   child: Column(
                  //     children: [Text('adadga'), Text('sdgds')],
                  //   ),
                  // );
                }),
          ),
        ],
      ),
    );
  }
}

class ActorCardWidget extends StatelessWidget {
  const ActorCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(2, 3),
                  )
                ]),
            width: double.infinity,
            height: 100,
            clipBehavior: Clip.hardEdge,
            child: Row(
              children: [
                Image(image: AssetImage('Ginnifer_Goodwin.jpeg')),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Джиннифер Гудвин',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Judy Hopps, озвучка',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
              // child: Container(
              //   child: Column(
              //     children: [
              //       Text('sdsdfs'),
              //     ],
              //   ),
              //   color: Colors.grey,
              // ),
            )));
  }
}
