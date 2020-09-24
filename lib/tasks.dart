import 'package:flutter/material.dart';

class TasksPage extends StatefulWidget {
  TasksPage({Key key}) : super(key: key);

  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  @override
  Widget build(BuildContext context) {
    Widget overlapped() {
      final overlap = 18.0;
      final items = [
        CircleAvatar(
          radius: 14,
          backgroundImage: NetworkImage(
              "https://us.123rf.com/450wm/fizkes/fizkes1904/fizkes190400933/121256725-head-shot-portrait-of-smiling-middle-aged-businessman-sitting-at-work-desk-looking-in-camera-success.jpg?ver=6"),
        ),
        CircleAvatar(
          radius: 14,
          backgroundImage: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ1mj3abA0TaOliBNQbKm3HIZCRzIvQO5YtIA&usqp=CAU"),
        ),
        CircleAvatar(
          radius: 14,
          backgroundImage: NetworkImage(
              "https://i.pinimg.com/originals/32/09/c0/3209c039c412745c026a4b6e400a9eae.jpg"),
        ),
        CircleAvatar(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Container(child: Text("+4"))),
          radius: 14,
          backgroundColor: Colors.black87,
        )
      ];

      List<Widget> stackLayers = List<Widget>.generate(items.length, (index) {
        return Padding(
          padding: EdgeInsets.fromLTRB(index.toDouble() * overlap, 0, 0, 0),
          child: items[index],
        );
      });

      return Stack(children: stackLayers);
    }

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    Widget ToDo() {
      return Padding(
        padding: const EdgeInsets.only(top: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: Color.fromRGBO(235, 244, 241, 1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "The Tungsten Project",
                            style: TextStyle(
                                color: Color.fromRGBO(81, 95, 95, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Project Finance Dashboard",
                            style: TextStyle(
                                color: Color.fromRGBO(81, 95, 95, 1),
                                fontSize: 10,
                                fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                      Expanded(
                          child: Container(
                              padding: EdgeInsets.only(right: 8),
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.keyboard_arrow_up,
                                    size: 30,
                                    color: Color.fromRGBO(109, 113, 112, 1),
                                  ))))
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Project finance in buisness processes is that users interact with lenders on online-based finance",
                    style: TextStyle(
                        color: Color.fromRGBO(71, 85, 85, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 8),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(child: overlapped()),
                        SizedBox(width: 10),
                        Row(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                height: 8,
                                width: 8,
                                color: Color.fromRGBO(77, 204, 222, 1),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8, right: 12),
                              child: Container(
                                width: w * .4,
                                child: SingleChildScrollView(
                                                          scrollDirection: Axis.horizontal,        child: Text(
                                    "twinkle twinkle little starahdjjaefhkabshsfyfygkifufwawqcxfbcinumliy8gm7yg,79okgf9fk5k.",
                                    overflow: TextOverflow.visible,
                                   // softWrap: false,
                                    style: TextStyle(
                                        color: Color.fromRGBO(81, 95, 95, 1),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ])
                ],
              ),
            ),
          ),
        ),
      );
    }

    Widget SmallCard() {
      return Padding(
        padding: const EdgeInsets.only(top: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: Color.fromRGBO(235, 244, 241, 1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://www.hashatit.com/images/uploads/users/74336/profile_picture/189315459.jpg"),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Team Incredible",
                            style: TextStyle(
                                color: Color.fromRGBO(81, 95, 95, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Project UI Dashboard",
                            style: TextStyle(
                                color: Color.fromRGBO(81, 95, 95, 1),
                                fontSize: 10,
                                fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                      Expanded(
                          child: Container(
                              padding: EdgeInsets.only(right: 8),
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 30,
                                    color: Color.fromRGBO(109, 113, 112, 1),
                                  ))))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    Widget customListTile() {
      return Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            height: h * 0.1,
            width: w * 0.8,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Container(
                          height: 8,
                          width: 8,
                          color: Color.fromRGBO(77, 204, 222, 1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 12),
                        child: Text(
                          "17 Sep 2020 - 9:00 pm",
                          style: TextStyle(
                              color: Color.fromRGBO(81, 95, 95, 1),
                              fontSize: 11,
                              fontWeight: FontWeight.w300),
                        ),
                      )
                    ],
                  ),
                  Container(
                      child: Column(
                    children: <Widget>[
                      Row(children: [
                        SizedBox.fromSize(
                          size: Size.square(15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              color: Color.fromRGBO(77, 204, 222, 1),
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Text("Create Userflow and Prototyping")
                      ]),
                      Row(children: [
                        SizedBox.fromSize(
                          size: Size.square(15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              color: Color.fromRGBO(77, 204, 222, 1),
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Text("Create Wireframe")
                      ]),
                      Row(children: [
                        SizedBox.fromSize(
                          size: Size.square(15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              color: Color.fromRGBO(77, 204, 222, 1),
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Text("Create Wireframe")
                      ]),
                      Row(children: [
                        SizedBox.fromSize(
                          size: Size.square(15),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                              color: Color.fromRGBO(77, 204, 222, 1),
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Text("Create Wireframe")
                      ])
                    ],
                  )),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      height: 20,
                      color: Color.fromRGBO(222, 189, 156, 1),
                      child: Center(
                          child: Text("Progress",
                              style: TextStyle(
                                  color: Color.fromRGBO(72, 39, 66, 1)))),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            "Task",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(32, 34, 56, 1),
                fontSize: 35),
          ),
        ),
        actions: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: FlatButton(
                onPressed: () {},
                child: Container(
                    height: 25,
                    width: 25,
                    child: Image.asset("assets/equalizer.png"))),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Stack(children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(56), topRight: Radius.circular(56)),
            child: Container(
              height: h * .85,
              color: Color.fromRGBO(209, 224, 219, 1),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 8),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Container(
                    width: w * 0.25,
                    height: h * .008,
                    color: Color.fromRGBO(31, 40, 56, 0.7),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: h * 0.45,
                    child: ListView(
                      children: [
                        Container(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("To Do",
                                style: TextStyle(
                                    color: Color.fromRGBO(81, 95, 95, 1),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                        //  SizedBox(height: 4),
                        ToDo(),
                        SizedBox(height: 8),
                        SmallCard(),
                        SizedBox(height: 8),
                        SmallCard(),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                // color: Colors.amber,
                padding: EdgeInsets.only(left: 35),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 8),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Sub Tasks",
                            style: TextStyle(
                                color: Color.fromRGBO(81, 95, 95, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: h * 0.2,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            customListTile(),
                            customListTile()
                          ]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
