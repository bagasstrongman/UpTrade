import 'package:flutter/material.dart';
import 'package:flutter_cryptowallet_app/find_page.dart';
import 'package:flutter_cryptowallet_app/notification_service.dart';
import 'package:timezone/data/latest.dart' as tz;

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();

    tz.initializeTimeZones();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff221E40),
      appBar: AppBar(
        backgroundColor: Color(0xff221E40),
        title: Container(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Image(image: AssetImage("assets/Logo.png"))),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    NotificationService().cancelAllNotifications();
                  },
                  icon: Icon(Icons.search)),
              Stack(children: [
                IconButton(
                    onPressed: () {
                      NotificationService().showNotification(
                          2,
                          "Hello UpTraders",
                          "Get 50% revenue for buy bitcoin today",
                          5);
                    },
                    icon: Icon(Icons.notifications)),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 10, left: 5),
                    width: 25,
                    height: 15,
                    decoration: BoxDecoration(
                        color: Color(0xff00CD8F),
                        borderRadius: BorderRadius.circular(20)),
                        child: Text("10",textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                  ),
                )
              ])
            ],
          )
        ],
      ),
      body: Stack(children: [
        ListView(scrollDirection: Axis.vertical, children: [
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.025,
              left: MediaQuery.of(context).size.height * 0.025,
              right: MediaQuery.of(context).size.height * 0.025,
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.3,
            decoration: BoxDecoration(
                color: Color(0xff00CD8F),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Balance",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Rp.8.750.423",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Last trade: 17 minutes ago",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        )),
                  ],
                ),
                Center(
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return FindPage();
                      }));
                    },
                    icon: Icon(
                      Icons.supervised_user_circle_rounded,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_circle_right,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.width * 0.08,
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.025,
              left: MediaQuery.of(context).size.height * 0.025,
              right: MediaQuery.of(context).size.height * 0.025,
              bottom: MediaQuery.of(context).size.height * 0.02,
            ),
            //color: Colors.black,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Movement",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.02,
                    ),
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Image(
                      image: AssetImage("assets/Card1.png"),
                      fit: BoxFit.contain,
                      width: 700,
                    )),
                Container(
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.01,
                    ),
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Image(
                      image: AssetImage("assets/Card2.png"),
                      fit: BoxFit.contain,
                      width: 700,
                    )),
                Container(
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.01,
                      right: MediaQuery.of(context).size.height * 0.02,
                    ),
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Image(
                      image: AssetImage("assets/Card3.png"),
                      fit: BoxFit.contain,
                      width: 700,
                    ))
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.width * 0.08,
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.015,
              left: MediaQuery.of(context).size.height * 0.025,
              right: MediaQuery.of(context).size.height * 0.025,
              bottom: MediaQuery.of(context).size.height * 0.02,
            ),
            //color: Colors.black,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hot News",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
          ),

          //News 1
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.width * 0.25,
            margin: EdgeInsets.only(
              //top: MediaQuery.of(context).size.height * 0.015,
              left: MediaQuery.of(context).size.height * 0.025,
              right: MediaQuery.of(context).size.height * 0.025,
              //bottom: MediaQuery.of(context).size.height * 0.02,
            ),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey.shade400, width: 0.2)),
            ),
            //color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      child: Text(
                        "Bitcoin, Ethereum, Crypto News & Price Data",
                        style: TextStyle(
                            color: Colors.grey.shade100,
                            fontSize: 20,
                            height: 1.5),
                      ),
                    ),
                    Text(
                      "BBC News | 1 second ago",
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("assets/News1.jpg"),
                          fit: BoxFit.cover)),
                )
              ],
            ),
          ),

          //News 2
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.width * 0.25,
            margin: EdgeInsets.only(
              //top: MediaQuery.of(context).size.height * 0.015,
              left: MediaQuery.of(context).size.height * 0.025,
              right: MediaQuery.of(context).size.height * 0.025,
              //bottom: MediaQuery.of(context).size.height * 0.02,
            ),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey.shade400, width: 0.2)),
            ),
            //color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      child: Text(
                        "Bitcoin, Ethereum, Crypto News & Price Data",
                        style: TextStyle(
                            color: Colors.grey.shade100,
                            fontSize: 20,
                            height: 1.5),
                      ),
                    ),
                    Text(
                      "BBC News | 1 second ago",
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("assets/News2.jpg"),
                          fit: BoxFit.cover)),
                )
              ],
            ),
          ),

          //News 3
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.width * 0.25,
            margin: EdgeInsets.only(
              //top: MediaQuery.of(context).size.height * 0.015,
              left: MediaQuery.of(context).size.height * 0.025,
              right: MediaQuery.of(context).size.height * 0.025,
              //bottom: MediaQuery.of(context).size.height * 0.02,
            ),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey.shade400, width: 0.2)),
            ),
            //color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      child: Text(
                        "Bitcoin, Ethereum, Crypto News & Price Data",
                        style: TextStyle(
                            color: Colors.grey.shade100,
                            fontSize: 20,
                            height: 1.5),
                      ),
                    ),
                    Text(
                      "BBC News | 1 second ago",
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("assets/News3.jpg"),
                          fit: BoxFit.cover)),
                )
              ],
            ),
          ),

          //News 4
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.width * 0.25,
            margin: EdgeInsets.only(
              //top: MediaQuery.of(context).size.height * 0.015,
              left: MediaQuery.of(context).size.height * 0.025,
              right: MediaQuery.of(context).size.height * 0.025,
              //bottom: MediaQuery.of(context).size.height * 0.02,
            ),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey.shade400, width: 0.2)),
            ),
            //color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      child: Text(
                        "Bitcoin, Ethereum, Crypto News & Price Data",
                        style: TextStyle(
                            color: Colors.grey.shade100,
                            fontSize: 20,
                            height: 1.5),
                      ),
                    ),
                    Text(
                      "BBC News | 1 second ago",
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.width * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("assets/News4.jpg"),
                          fit: BoxFit.cover)),
                )
              ],
            ),
          ),

          //Free Space
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.12,
          ),
        ]),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.2,
            //color: Color(0xff3C3860),
            child: Stack(children: [
              Column(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * 0.15,
                  color: Color(0xff3C3860),
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.12,
                          height: MediaQuery.of(context).size.width * 0.12,
                          //color: Colors.white,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/My Wallet.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.12,
                          height: MediaQuery.of(context).size.width * 0.12,
                          //color: Colors.white,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/Exchange.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.12,
                          height: MediaQuery.of(context).size.width * 0.12,
                          //color: Colors.white,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.11,
                          height: MediaQuery.of(context).size.width * 0.11,
                          //color: Colors.white,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/Portofolio.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.11,
                          height: MediaQuery.of(context).size.width * 0.11,
                          //color: Colors.white,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/Account.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.width * 0.15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xff01CD90),
                      image: DecorationImage(
                          image: AssetImage("assets/Main.png"),
                          fit: BoxFit.fitWidth)),
                ),
              ),
            ]),
          ),
        )
      ]),
    );
  }
}
