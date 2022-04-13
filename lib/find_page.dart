import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FindPage extends StatelessWidget {
  const FindPage({Key? key}) : super(key: key);

  Future<List<dynamic>> _fecthDataUsers() async {
    var result =
        await http.get(Uri.parse("https://reqres.in/api/users?per_page=8"));
    return json.decode(result.body)['data'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff221E40),
      appBar: AppBar(
        backgroundColor: Color(0xff221E40),
        centerTitle: true,
        title: Text("Find People",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return FindPage();
                }));
              },
              icon: Icon(Icons.refresh))
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.width * 0.5,
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.03,
              left: MediaQuery.of(context).size.width * 0.03,
              right: MediaQuery.of(context).size.width * 0.03,
              bottom: MediaQuery.of(context).size.width * 0.03,
            ),
            decoration: BoxDecoration(
              color: Color(0xff3C3860),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage("assets/Searching.gif"), fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.03,
              left: MediaQuery.of(context).size.width * 0.035,
              right: MediaQuery.of(context).size.width * 0.03,
              bottom: MediaQuery.of(context).size.width * 0.03,
            ),
            child: Text(
              "Search Results",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Container(
            child: FutureBuilder<List<dynamic>>(
              future: _fecthDataUsers(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.75,
                    child: ListView.builder(
                        padding: EdgeInsets.all(10),
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  NetworkImage(snapshot.data[index]['avatar']),
                            ),
                            textColor: Colors.white,
                            title: Text(snapshot.data[index]['first_name'] +
                                " " +
                                snapshot.data[index]['last_name']),
                            subtitle: Text(snapshot.data[index]['email']),
                          );
                        }),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.width * 0.07,
            ),
            child: Text(
              "Try to find another user...",
              style: TextStyle(color: Colors.grey.shade400),
            ),
          )
        ],
      ),
    );
  }
}
