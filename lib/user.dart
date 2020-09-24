import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  UserPage({Key key}) : super(key: key);

  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;

    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              margin: EdgeInsets.only(bottom: h * .005),
              child: Text(
                "Profile",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(81, 95, 95, 1),
                    fontSize: 35),
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(56),
                    topRight: Radius.circular(56)),
                child: Container(
                  height: h * .85,
                  color: Color.fromRGBO(209, 224, 219, 1),
                ),
              ),
            ),
            Column(
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 45,
                    backgroundImage: NetworkImage(
                        "https://media.istockphoto.com/photos/portrait-of-a-girl-picture-id938709362?k=6&m=938709362&s=612x612&w=0&h=mUQAOuFjTUhvykTbkpXXERePajEWvVqOM2tR3gwS3II="),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: h * .01),
                        child: Column(
                          children: [
                            Text(
                              "Design Pilot",
                              style: TextStyle(
                                  color: Color.fromRGBO(81, 95, 95, 1),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "UI & UX Designer ",
                              style: TextStyle(
                                  color: Color.fromRGBO(81, 95, 95, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(
                              // horizontal: 12,
                              vertical: h * 0.03),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                DisplayStats(
                                  title: " Project",
                                  desc: "25",
                                  isCentre: true,
                                ),
                                VerticalDivider(
                                  color: Color.fromRGBO(81, 95, 95, 1),
                                  thickness: 2,
                                ),
                                DisplayStats(
                                  title: " Client",
                                  desc: "50+",
                                  isCentre: true,
                                ),
                                VerticalDivider(
                                  color: Color.fromRGBO(81, 95, 95, 1),
                                  thickness: 2,
                                ),
                                DisplayStats(
                                  title: "Status",
                                  desc: "Pro",
                                  isCentre: true,
                                ),
                                VerticalDivider(
                                  color: Color.fromRGBO(81, 95, 95, 1),
                                  thickness: 12,
                                ),
                                DisplayStats(
                                  title: "Rating",
                                  desc: "9/10",
                                  isCentre: true,
                                ),
                                VerticalDivider(
                                  color: Colors.black,
                                  thickness: 2,
                                ),
                              ])),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: h * .01),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Personal Details",
                              style: TextStyle(
                                  color: Color.fromRGBO(81, 95, 95, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: h * .005, horizontal: w * 0.01),
                          color: Color(0xffebf4f1),
                          child: Row(children: [
                            Container(
                              width: w * .45,
                              margin: EdgeInsets.symmetric(
                                  vertical: h * .01, horizontal: w * 0.01),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DisplayStats(
                                    title: "Email",
                                    desc: "rishabms80@gmail.com",
                                    isCentre: false,
                                  ),
                                  Divider(color: Colors.transparent),
                                  DisplayStats(
                                    title: "Mobile",
                                    desc: "9964414956",
                                    isCentre: false,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: h * .01, horizontal: w * 0.01),
                              child: Column(
                                children: [
                                  DisplayStats(
                                    title: "Membership",
                                    desc: "12 Sep 2020",
                                    isCentre: false,
                                  ),
                                  Divider(
                                    color: Colors.transparent,
                                  ),
                                  DisplayStats(
                                    title: "Skill",
                                    desc: "Lightroom,VSCO",
                                    isCentre: false,
                                  )
                                ],
                              ),
                            )
                          ]),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: h * .01),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Photos",
                                  style: TextStyle(
                                      color: Color.fromRGBO(81, 95, 95, 1),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: h * .01),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("view all",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 133, 103, 95),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: h * 0.2,
                        child: GridView.count(
                          crossAxisCount: 4,
                          shrinkWrap: true,
                          children: List.generate(
                            8,
                            (index) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: EdgeInsets.all(4),
                                  child: Image.network(
                                    "https://cdn.dribbble.com/users/2459704/screenshots/10001335/designer_jobs_2x.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class DisplayStats extends StatelessWidget {
  const DisplayStats(
      {Key key,
      @required this.title,
      @required this.desc,
      @required this.isCentre})
      : super(key: key);

  final String title;
  final String desc;
  final bool isCentre;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment:
            (isCentre) ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Color.fromRGBO(81, 95, 95, 1),
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 4),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              desc,
              softWrap: false,
              style: TextStyle(
                  color: Color.fromRGBO(81, 95, 95, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
