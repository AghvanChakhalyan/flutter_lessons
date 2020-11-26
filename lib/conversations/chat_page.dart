import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  String message = "dfdfd";
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          resizeToAvoidBottomPadding: true,
          appBar: _appBar(),
          body: _body(),
          bottomNavigationBar: _bottomNavigationBar(),
        ),
      ),
    );
  }

  _appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(60),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(color: Colors.yellow),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 15),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  IconButton(
                      icon: new Icon(
                        Icons.arrow_back,
                        color: Colors.blue,
                        size: 35,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                  Icon(
                    Icons.person,
                    size: 60,
                  ),
                ],
              ),
            ),
            Text(
              "User name",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.phone,
                color: Colors.blue,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.video_call,
                color: Colors.blue,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.info,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _body() {
    return ListView.builder(
      padding: EdgeInsets.fromLTRB(1, 10, 1, 50),
      itemCount: 50,
      itemBuilder: (context, index) {
        if (index % 2 == 0) {
          return _messageItemForCurrentUser(index);
        } else {
          return _messageItemForSecondUser(index);
        }
      },
    );
  }

  _messageItemForCurrentUser(int index) {
    return Row(
      children: [
        Spacer(),
        Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            "dsdsdsds $index",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }

  _messageItemForSecondUser(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10, ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(Icons.face),
                      ),
                     
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.red,
                          ),
                          child: Text(
                            "dsdsdsdsdfddg $index",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }

  _bottomNavigationBar() {
    return Container(
      height: 56,
      color: Colors.white,
      child: Expanded(
        child: Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(6),
                child: Icon(
                  Icons.grain,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(6),
                child: Icon(
                  Icons.photo_camera,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(6),
                child: Icon(
                  Icons.mic,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      border: InputBorder.none,
                      suffixIcon: Container(
                        child: Icon(
                          Icons.insert_emoticon,
                          color: Colors.blue,
                        ),
                      ),
                      hintText: "Aa",
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(6),
                child: Icon(
                  Icons.thumb_up,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
