import 'package:flutter/material.dart';
import 'package:learn_flutter/conversations/chat_page.dart';

class Conversations extends StatefulWidget {
  @override
  _ConversationsState createState() => _ConversationsState();
}

class _ConversationsState extends State<Conversations> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar(),
        body: _body(),
      ),
    );
  }

  Widget _appBar() {
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
              child: Icon(
                Icons.people,
                size: 60,
              ),
            ),
            Text(
              "Chats",
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
              child: Icon(Icons.photo_camera),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.edit,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 40),
      child: Expanded(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: InputBorder.none,
                      prefixIcon: Container(
                        child: Icon(
                          Icons.search,
                          color: Colors.grey.shade100,
                        ),
                      ),
                      hintText: "Search",
                    ),
                  ),
                ),
              ),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, itemIndex) {
                    return _userStoryItemWidget(itemIndex,
                        hasBorder: (itemIndex % 2) == 0);
                  },
                ),
              ),
              
              _conversationItem(isRead: true),
              _conversationItem(isRead: false),
              _conversationItem(isRead: false),
              _conversationItem(isRead: true),
              _conversationItem(isRead: true),
              _conversationItem(isRead: false),
              _conversationItem(isRead: true),
              _conversationItem(isRead: true),
              _conversationItem(isRead: false),
              _conversationItem(isRead: false),
              _conversationItem(isRead: true),
              _conversationItem(isRead: true),
              _conversationItem(isRead: true),
              _conversationItem(isRead: false),
              _conversationItem(isRead: false),
              _conversationItem(isRead: true),
              _conversationItem(isRead: true),
              _conversationItem(isRead: true),
              _conversationItem(isRead: false),
              _conversationItem(isRead: false),
              _conversationItem(isRead: true),
              _conversationItem(isRead: true),
              _conversationItem(isRead: true),
              _conversationItem(isRead: false),
              _conversationItem(isRead: false),
              _conversationItem(isRead: true),
            ],
          ),
        ),
      ),
    );
  }

  Widget _userStoryItemWidget(int index, {bool hasBorder}) {
    return Center(
      child: Container(
        width: 50,
        height: 50,
        margin: index == 0
            ? EdgeInsets.only(left: 15, right: 15)
            : EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: hasBorder
              ? Border.all(
                  width: 3,
                  color: Colors.blue,
                )
              : Border.all(
                  width: 3,
                  color: Colors.yellow,
                ),
        ),
        child: Icon(Icons.people_outline),
      ),
    );
  }

  Widget _conversationItem({bool isRead}) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent, 
      //azat tex@ nuynpes vercnelu method e
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return ChatPage();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
        child: Row(
          children: [
            Container(
              width: 55,
              height: 55,
              margin: EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(
                Icons.account_circle,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "user name",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "last mesage",
                  style: TextStyle(
                    color: isRead ? Colors.grey : Colors.black,
                  ),
                ),
              ],
            ),
            Spacer(),
            isRead
                ? Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey[600],
                    ),
                    child: Icon(
                      Icons.check,
                      size: 10,
                      color: Colors.white,
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(2.5),
                    child: Container(
                      width: 15,
                      height: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
